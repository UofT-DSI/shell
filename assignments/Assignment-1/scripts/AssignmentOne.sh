#!/bin/bash
echo "************************************************************"
echo "************************************************************"
echo "UofT DSI: Unix Shell, Git and GitHub Course"
echo "Assignment 1: Unix and Data"
echo "Student Full Name: Abdela Ahmed MOSSA"
echo "Email: abdela4u@gmail.com"
echo "***********************************************************"
echo "***********************************************************"

#Requirement 1: Write a script that takes the parking_data.csv file as a positional parameter from the terminal as the input
# Check if the input CSV file is provided
if [ "${#1}" -eq 0 ]; then
  echo "Usage: $0 'parking_data.csv' argument is expected"
  exit 1
fi

# Check if the file exists in the Desktop directory
input_csv="$1"
file_directory=~/Desktop
path="${file_directory}/${input_csv}"

if [ ! -e "$path" ]; then
  echo "Error: File not found: $input_csv"
  exit 1
else
	echo "Full path of the file is: ${path}"
fi


#Requirement 2
# Requirement 2a: Function to print all types of parking infractions
function infractions_description () {
	tail -n +2 "$path" | cut -d ',' -f4 | sort | uniq > infractions_description.csv      # on how to use the tail command: https://www.linode.com/docs/guides/how-to-use-tail/
	echo "All Types of infractions_description"
	cat < infractions_description.csv
}

# Requirement 2b: Function to print mean, min, and max set_fine_amount
function set_fine_amount() {
	echo "Calculating Mean, Max and Min ..."
	tail -n +2 "$path" | cut -d ',' -f 5 | {
		read first
		sum=$first min=$first max=$first count=1
		while read value; do
			sum=$((sum + value))
			count=$((count + 1))
			[ "$value" -lt "$min" ] && min="$value"
			[ "$value" -gt "$max" ] && max="$value"
		done

	echo "Mean: $((sum / count))"
    echo "Min: $min"
    echo "Max: $max"
  }
}

# Requirement 2c:

save_infraction_to_csv() {
	chosen_infraction=PARK PROHIBITED TIME NO PERMIT
  echo "Enter the infraction description to save:"
  read chosen_infraction

  # Filter rows based on the chosen infraction_description and extract the three columns
  awk -F ',' -v chosen="$chosen_infraction" 'BEGIN {OFS=FS} $4 == chosen {print $4, $5, $8}' "$path" > ~/Desktop/selected_infraction.csv

  # Add headings to the saved file
  sed -i '1i\infraction_description,set_fine_amount,location2' ~/Desktop/selected_infraction.csv

  # Print a message indicating the saved file
  echo "Saved '"$chosen_infraction"' observations to selected_infraction.csv"
}


#case statement bash script syntax reference: "https://stackoverflow.com/questions/4728320/bash-script-case-statement-and-sub-menus"
# Present user options
echo "Enter you choice:"
options=("Print Infractions Description" "Calculate Mean, Min and Max" "Save Selected Infraction to CSV" "Exit")
select opt in "${options[@]}" ; do
  case $opt in
    "Print Infractions Description")
      infractions_description
      ;;
    "Calculate Mean, Min and Max")
      set_fine_amount
      ;;
    "Save Selected Infraction to CSV")
      save_infraction_to_csv
      ;;
    "Exit")
      echo "Exiting..."
      break
      ;;
    *)
      echo "Invalid option. Please choose a valid option."
      ;;
  esac
done

