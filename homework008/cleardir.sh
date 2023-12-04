#!/bin/bash

read -r -p "Enteg directory to clear: " dir

if [ -d $dir ]
	then
		echo "Directory $dir is founded."
	else
		echo "Directory $dir is NOT founded."
		exit 2
fi

cd $dir
rm -f -v *.bak *.tmp *.backup
echo "Directory $dir is cleared."
