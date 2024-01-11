#!/bin/bash

# This is a Random Password Generator

echo " PASSWD-GEN "
echo " "
read -p " Enter the length of the password : " passlen

charset="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_"

password=$(tr -dc "$charset" < /dev/urandom | head -c "$passlen")

echo $password