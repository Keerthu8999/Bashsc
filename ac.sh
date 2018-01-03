#!/bin/bash
addToRecord()
{
	echo
	while true
	do
		echo "If you'd like to quit, enter 'q'."
		read aInput
		if [ "$aInput" == 'q' ]
			then
			break
		fi
		echo
		echo $aInput >> addressbook.csv
		echo "The entry was added to your address book."
		echo
	done
}

displayRecord()
{
	echo
	while true
	do
		read dInput
		if [ "$dInput" == 'q' ]
			then
			break
		fi
		echo
		echo "Listing records for \"$dInput\":"
		grep ^"$dInput" addressbook.csv   
		RETURNSTATUS=`echo $?`
		if [ $RETURNSTATUS -eq 1 ]
			then
			echo "No records found with last name of \"$dInput\"."
		fi
		echo
	done
}

editRecord()
{
	echo
	while true
	do
		read eInput
		if [ "$eInput" == 'q' ]
			then
			break
		fi
		echo
		echo "Listing records for \"$eInput\":"
		grep -n "$eInput" addressbook.csv
		RETURNSTATUS=`echo $?`
		if [ $RETURNSTATUS -eq 1 ]
			then
			echo "No records found for \"$eInput\""
		else
			echo
			echo "Enter the line number (the first number of the entry) that you'd like to edit."
			read lineNumber
			echo
			for line in `grep -n "$eInput" addressbook.csv`
			do
				number=`echo "$line" | cut -c1`
				if [ $number -eq $lineNumber ]
					then
					echo "What would you like to change it to? Use the format:"
					echo "\"Last name,first name,email url,phone number\" (no quotes or spaces)."
					read edit
					lineChange="${lineNumber}s"
					sed -i -e "$lineChange/.*/$edit/" addressbook.csv
					echo
					echo "The change has been made."
				fi
			done
		fi
		echo
	done		
}

removeRecord()
{
	echo 
	while true
	do
		read rInput
		if [ "$rInput" == 'q' ]
			then
			break
		fi
		echo
		echo "Listing records for \"$rInput\":"
		grep -n "$rInput" addressbook.csv
		RETURNSTATUS=`echo $?`
		if [ $RETURNSTATUS -eq 1 ]
			then
			echo "No records found for \"$rInput\""
		else
			echo
			echo "Enter the line number (the first number of the entry) of the record you want to remove."
			read lineNumber
			for line in `grep -n "$rInput" addressbook.csv`
			do
				number=`echo "$line" | cut -c1`
				if [ $number -eq $lineNumber ]
					then
					lineRemove="${lineNumber}d"
					sed -i -e "$lineRemove" addressbook.csv
					echo "The record was removed from the address book."
				fi
			done
		fi
		echo
	done
}

searchRecord()
{
	echo
	while true
	do
		read sInput
		if [ "$sInput" == 'q' ]
			then
			break
		fi
		echo
		echo "Listing records for \"$sInput\":"
		grep "$sInput" addressbook.csv
		RETURNSTATUS=`echo $?`
		if [ $RETURNSTATUS -eq 1 ]
			then
			echo "No records found for \"$sInput\"."
		fi
		echo
	done
}


echo
lastCharOfFile=`tail -c 1 addressbook.csv` 
if [ -n "$lastCharOfFile" ]
	then
	echo >> addressbook.csv
fi
echo "a) to add a record"
echo "d) to display 1 or more records"
echo "e) to edit a record"
echo "r) to remove a single record"
echo "s) to search for records"
echo
read input

case $input in
	a) addToRecord;;
	d) displayRecord;;
	e) editRecord;;
	r) removeRecord;;
	s) searchRecord;;
esac

echo
# HERE doc
cat <<EOF   
Any changes you made have been saved.
Have a nice day!
EOF
echo
