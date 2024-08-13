#!/bin/bash

# CONFIGURATION
folder_md="markdown_slides/"
folder_output="../01_materials/slides" # This will be used for both PDF and HTML

# Clear the screen for the splash screen
clear

# Display the splash screen
echo "============================================"
echo "          Generating Slides"
echo "============================================"
echo ""
echo "Configuration:"
echo "  - Markdown Folder: $folder_md"
echo "  - Output Folder: $folder_output"
echo ""
echo "To change the configuration, please manually change them in the file."
echo "============================================"
echo "  Processing..."
echo -e "============================================\n\n"

# ---------- #
#  Generate HTML or PDF versions of slides, based on input flag.
#  Usage:
#    To generate HTML: ./generate_slides.sh --html [theme]
#    To generate PDF:  ./generate_slides.sh --pdf [theme]
#    For help:        ./generate_slides.sh --help
# ---------- #

function show_help() {
    echo -e "\n\nUsage: $0 --html|--pdf [--theme theme_path] [--help]"
    echo ""
    echo "This script converts Markdown files to slide presentations using Marp CLI."
    echo "It supports generating slides in HTML or PDF format and allows applying"
    echo "a custom CSS theme."
    echo ""
    echo "Options:"
    echo "  --html                   Generate slides in HTML format. This option"
    echo "                           processes all Markdown files in the 'markdown_slides'"
    echo "                           directory, outputting HTML files."
    echo ""
    echo "  --pdf                    Generate slides in PDF format. Similar to --html,"
    echo "                           but outputs PDF files instead."
    echo ""
    echo "  --theme theme_path       Apply a custom CSS theme to the slides. The"
    echo "                           'theme_path' should be the path to the CSS file."
    echo "                           This is optional and can be used with either"
    echo "                           --html or --pdf options."
    echo ""
    echo "  --help                   Display this detailed help message and exit."
    echo ""
    echo "Examples:"
    echo "  Generate HTML slides with a custom theme:"
    echo "    $0 --html --theme /path/to/theme.css"
    echo ""
    echo "  Generate PDF slides without a theme:"
    echo "    $0 --pdf"
    echo ""
    echo "Note:"
    echo "  Ensure Node.js is installed and npm is accessible in your system's PATH."
    echo "  The script processes Markdown (.md) files located in the 'markdown_slides'"
    echo -e "  directory, preserving filenames but changing extensions to .html or .pdf.\n\n"
}

if [ "$#" -lt 1 ]; then
    echo "Error: the correct number of parameters isn't passed in."
    show_help
    exit 1
fi

# Check for Marp CLI installation
if ! command -v npx >/dev/null 2>&1; then
    echo "- Error: npx is not installed. Please install Node.js to proceed."
    exit 1
fi

if ! npx marp --version >/dev/null 2>&1; then
    echo "- Marp CLI is not installed. Installing Marp CLI in this repository..."
    npm install --no-save @marp-team/marp-cli
fi

# Defaults
output_type=""
theme_path=""

# Process command-line arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --html|--pdf)
            output_type="$1"
            shift # Remove argument name from processing
            ;;
        --theme)
            if [ -n "$2" ] && [ "${2:0:1}" != "-" ]; then
                theme_path="$2"
                shift 2 # Remove both argument name and value from processing
            else
                echo "Error: '--theme' requires a non-empty option argument."
                exit 1
            fi
            ;;
        --help)
            show_help
            exit 0
            ;;
        *)
            # Unknown option
            echo "Error: Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
done

# Validate output type
if [ -z "$output_type" ]; then
    echo "Error: You must specify either --html or --pdf."
    show_help
    exit 1
fi

# Create the output folder if it does not exist
if [ ! -d "$folder_output" ]; then
    echo "- Creating output folder: '$folder_output'"
    mkdir -p "$folder_output"
else
    echo "- Output folder '$folder_output' already exists."
fi

echo "- Starting slides generation..."

# Get list of Markdown files
markdown_files=$(find "$folder_md" -name "*.md")
if [ -z "$markdown_files" ]; then
    echo "- No Markdown files found in '$folder_md'. Exiting."
    exit 1
fi

# Process each Markdown file
for markdown_file in $markdown_files; do
    file_name=$(basename -- "$markdown_file")
    base_name="${file_name%.md}"
    echo "- Processing '$file_name'..."
    output_file="$folder_output/$base_name"

    if [ "$output_type" = "--html" ]; then
        # Generate HTML
        output_file+=".html"
        echo "  - Generating HTML: $output_file"
        npx marp "$markdown_file" --output "$output_file" --html --allow-local-files ${theme_path:+--theme-set $theme_path} # &> /dev/null
    elif [ "$output_type" = "--pdf" ]; then
        # Generate PDF
        output_file+=".pdf"
        echo "  - Generating PDF: $output_file"
        npx marp "$markdown_file" --output "$output_file" --pdf --allow-local-files --pdf-notes ${theme_path:+--theme-set $theme_path} # &> /dev/null
    else
        # nahhh
        show_help
        exit 1
fi


    if [ $? -eq 0 ]; then
        echo "  - Success: Generated '$output_file'"
    else
        echo "  - Error: Failed to generate '$output_file'"
    fi
done

# Display the completion message with visual styling
echo -e "\n\n=================================================="
echo "  Completion Status"
echo "=================================================="
echo ""
echo "  - All files processed. Slides generation complete."
echo "  - Generated files are located in: $folder_output"
echo ""
echo "=================================================="
echo "  Done."
echo -e "==================================================\n\n"
