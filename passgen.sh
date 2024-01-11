#!/bin/bash

# This is a Random Password Generator


# Bold High Intensity Colors 
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
# Reset
Normal='\033[0m'       # Text Reset

echo -e " $BICyan
    ____  ___   ___________       ______        _____________   __
   / __ \/   | / ___/ ___/ |     / / __ \      / ____/ ____/ | / /
  / /_/ / /| | \__ \\__ \ | | /| / / / / /_____/ / __/ __/ /  |/ / 
 / ____/ ___ |___/ /__/ /| |/ |/ / /_/ /_____/ /_/ / /___/ /|  /  
/_/   /_/  |_/____/____/ |__/|__/_____/ v1.0 \____/_____/_/ |_/        
   $Normal"
echo -e "$BICyan                      CREATED BY KALMUX $Normal"
echo " "
read -e -p $'\033[1;92m Enter the length of the password : \033[0m' passlen
if ! [[ $passlen =~ ^[1-9][0-9]*$ ]]
then 
    echo " "
    echo -e "$BIRed Invalid password length. Please provide a positive integer. $Normal"
    exit 1
fi

echo " "
echo -e "$BIGreen Generating Your Password $Normal "
echo " "
charset="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_"

password=$(tr -dc "$charset" < /dev/urandom | head -c "$passlen")
sleep 1s
echo -e "$BIGreen Your Generated Password is :$Normal $BIYellow  $password $Normal"