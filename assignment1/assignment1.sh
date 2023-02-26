#!/bin/bash

# this is part 2a) of my assignment; prints all types of parking infractions (header on csv is infraction_description)
# this uses a positional parameter, which is filled in with the parking data csv file.

x=$1

function f1 {
	cut -d, -f4 < $x | sort | uniq
	return
}

f1

# this is part 2b) and is the calculation to find the min value of the set_fine_amounts from the parking csv file (again a positional parameter)
# i used the following link for help with this calculation; https://stackoverflow.com/questions/16212410/finding-the-max-and-min-values-and-printing-the-line-from-a-file

function f2 { 
	cut -d, -f5 < $x | sort -n | head -1
	return
 	}

f2

# this is part 2b) and is the calculation to find the max value of the set_fine_amounts from the parking csv file (again a positional parameter)
# i used the following link for help with this calculation; https://stackoverflow.com/questions/16212410/finding-the-max-and-min-values-and-printing-the-line-from-a-file

function f3 { 
	cut -d, -f5 < $x | sort -nr | head -1
	return
 	}

f3

# this is for part 2c) and it saves the details of one parking infraction from the parking csv file (again a positional parameter)
# the information is cut and saved into a file called output.csv, which is another positional parameter.
# i used the following link for help on extracting information of my choosing from an excel file; https://www.baeldung.com/linux/csv-parsing
# to save the output into a csv file, i tried to look it up but then tried just using from class the command ">>" to add to a file and it worked
# again, i used a positional parameter so the output can be saved to a csv of whoever is running this function's choosing.

file=$2


while IFS="," read -r r1 r2 r3
do
	echo "infraction_description: $r1" >> $2
	echo "set_fine_amount: $r2" >> $2
	echo "location2: $r3" >> $2
done < <(cut -d "," -f4,5,8 $x | tail -n 1)



















