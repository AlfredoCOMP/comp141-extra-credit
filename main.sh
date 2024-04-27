#!/bin/bash -i 

#create directory
mkdir output

#copy text file to output
cp textfile.txt output

#cd into output
cd output

#read cotent into new file named read.txt 
cat textfile.txt > read.txt

#run pwd and ls and save outputs to file named pwd.txt and ls.txt
pwd > pwd.txt
ls > ls.txt

#Make a copy named copy.txt of the text file
cp textfile.txt copy.txt

#Create an alias that prints today's date and save it to date.txt 
alias today="date +'%x'"

today > date.txt

#Count words in text file 
wc -w textfile.txt > textcount.txt

#Save first 5 lines of ps command into process.txt
ps -e | head -n5 > process.txt

#Save first 5 lines of ifconfig into netstat.txt
ifconfig | head -n5 > netstat.txt

#Save first 5 lines of mount as mount.txt
mount | head -n5 > mount.txt

#Make file permissions.txt to have all permissions
> permissions.txt 
chmod 777 permissions.txt

#Create shell variable TESTNV1 set it to "test" 
TESTENV1="test"

#All words in text file with ATLEAST 3 letters, save to regex.txt
grep -o '\b[a-zA-Z]\{3,\}\b' textfile.txt > regex.txt

#Go back to parent directory
cd ../
