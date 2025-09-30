#!/bin/bash
echo "************** Directory Maker ***************"
while :
do
echo "Your profile is empty. Let's start by creating a directory"
echo -e "Name your directory(no spaces)--> \c" 
read MAIN
mkdir $MAIN | ls
echo "$MAIN has been created successfully"
while :
do
echo -e "What do you want to do next?
1. Delete $MAIN
\n2.Create a new file inside $MAIN
\n3.Quit 
Select an option--> \c"
read OPTION
	if [ $OPTION = 1 ]
	then 
	echo -e "Are you sure [1] yes [2] no --> \c"
	read CHO
	if [ $CHO = 1 ]
	then
	rmdir "$MAIN"| ls
	echo "{$MAIN} has been deleted"
	break
		
	elif [ $CHO = 2 ]
	then
 	echo "return"
	fi
	elif [ $OPTION = 3 ]
	then
 	echo "You have elected to quit, Goodbye!"
	exit
	fi
	if [ $OPTION = 2 ]
	then 
	cd $MAIN
	echo -e "Ok, name your file --> \c"
	read FILENAME
	touch $FILENAME
	echo "$FILENAME has been created "
	echo "|||||||||||||||||||"
	while : 
	do
	echo "What do you want to do next?-->
[1] Create another file
[2] Edit a file
[3] Search/Delete 
[4] Return
 ---\c"
	read FILECHOICE
	if [ $FILECHOICE = 1 ]
	then
	ls | echo -e "Ok, name your file --> \c"
        read FILE1
	touch $FILE1
	echo "$FILE1 has been created" | ls
	fi
	if [ $FILECHOICE = 2 ]
	then
	ls | echo "Please type the name of the file --> \c"
	read FILENAME
	echo "This is what is in your $FILENAME file:"
	cat $FILENAME
	echo "{$FILENAME} has been edited"
	echo "Type some information -->\c"
	read INFO
	echo $INFO >> $FILENAME
	echo "{$FILENAME} has been edited with $INFO"
	break
	echo $INFO
	cat $FILENAME
	fi
	if [ $FILECHOICE = 3 ]
	then 
	echo -e "Search mode: [1] Name  [2] Content --> \c"
	read SEARCHMODE
	if [ $SEARCHMODE = 1 ]
	then
		echo -e "Enter name pattern (e.g., notes or *.txt) --> \c"
		read SEARCH
		echo "Search results (by name):"
		find . -type f \( -iname "$SEARCH" -o -iname "*$SEARCH*" \) | sed 's|^\./||'
	elif [ $SEARCHMODE = 2 ]
	then
		echo -e "Enter text to search in files --> \c"
		read NEEDLE
		echo "Search results (by content):"
		grep -Rin --color=never -- "$NEEDLE" .
	fi
	fi
	echo -e "Do you want to delete $FILENAME [1] yes [2] no --> \c"
	read DELCHO
	if [ $DELCHO = 1 ]
	then
	rm $FILENAME | ls
	echo "{$FILENAME} has been deleted"
	break
	fi
	if [ $DELCHO = 2 ]
	then
	echo "Thanks for not deleting {$FILENAME}! Returning to main menu."
	echo " "
	break
	fi
	if [ $FILECHOICE = 4 ]
	then 
	cd ..
	break
	fi
	done
	fi
done
done