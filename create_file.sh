#!/bin/bash
echo "########################## Create File In Dir  #############################"

createfile()
{
	read -p "please input your file:" file
	if [ -f "$file" ];then
		echo "the file is exist"
	else
		read -p "create? create input yes,not create input no:(yes) " a
		case $a in
			"yes")cd $1
				touch $file
				;;
			"y")cd $1
				touch $file
				;;	
			"no:")
				echo "quit1"
				;;
			*)
				touch $file
				;;	
		esac	     
	fi		   
}

read -p "please input your dir:" dir
if [ -d "$dir" ];then
	echo "the dir exist"
	createfile $dir
else
	echo "create dir ./"
	createfile "./"
fi   

