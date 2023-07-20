#!/bin/bash

# Task №1
# ------------------------------------------------------------------------------------------------
# Create a bash script that prints the current date and time,
# lists all files in the present working directory,
# and prints the contents of a text file called 'sample.txt'.

# Write your code here
# ------------------------------------------------------------------------------------------------
#date and time
date
# lists all files in the present working directory
ls -a
#prints the contents of a text file called 'sample.txt'
cat sample.txt
# ------------------------------------------------------------------------------------------------


# Task №2
# ------------------------------------------------------------------------------------------------
# Create a bash script that will:
#    1. Prompt the user for a directory name
#    2. Create the directory if it doesn't exist
#    3. Create a file in the directory called "info.txt"
#    4. Ask the user to enter some information (text or numbers)
#    5. Write the information to the "info.txt" file
#    6. Print a message to the user letting them know the directory and file were created successfully
#    7. Exit the script

# Write your code here
# ------------------------------------------------------------------------------------------------
#Prompt the user for a directory name
printf "Enter a directory name "
#reads the directory name
read dir_name
#Creates the directory
mkdir $dir_name
#enters the directory
cd $dir_name
#Creates a file in the directory called "info.txt"
touch info.txt
#Ask the user to enter some information
printf "Enter some info "
#reads user info
read user_info
#Write the information to the "info.txt" file
echo $user_info >| info.txt
#Print a message to the user letting them know the directory and file were created successfully
printf "Directory and file were created successfully"
#exits the script
exit 0
# ------------------------------------------------------------------------------------------------


# Task №3
# ------------------------------------------------------------------------------------------------
# Create a bash script that will list all of the files in the current directory
# and its subdirectories and then sort them by size (largest to smallest).
# The script should also output the total size of all the files to the console.

# Write your code here
# ------------------------------------------------------------------------------------------------
#list all of the files in the current directory and its subdirectories and then sort them by size (largest to smallest)
ls -lsh
printf "Total size of all the files: "
#outputs the total size of all the files
du -sh
# ------------------------------------------------------------------------------------------------


# Task №4
# ------------------------------------------------------------------------------------------------
# Create a bash script that loops through a given directory,
# reads all the image files (.jpg and .png) and
# creates a text file with the name of each image file followed by the dimensions of the image.

# Write your code here
# ------------------------------------------------------------------------------------------------
#loops through all image files in the current directory
for file in ./*.jpg ./*.png; do
  #get the file name
  name=$(basename "$file")
  #get the dimensions of the image
  dimensions=$(identify -format "%wx%h" "$file")
  #create a text file with the name and dimensions
  echo "$name $dimensions" >> "./image_dimensions.txt"
done

