#!/bin/bash
#
# This script creates a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.
# The username, password, and host for the account will be displayed.

# Make sure the script is being executed with superuser privileges.


# Get the username (login).

# Get the real name (contents for the description field).

# Get the password.

# Create the account.

# Check to see if the useradd command succeeded.
# We don't want to tell the user that an account was created when it hasn't been.

# Set the password.

# Check to see if the passwd command succeeded.

# Force password change on first login.

# Display the username, password, and the host where the user was created.

!/bin/bash

read -p "Enter your name: " name
read -p "Enter your username: " username
egrep "^$username" /etc/passwd >/dev/null

if [[ $? -eq 0 ]]
then
        echo -e "\n$username exists"
        exit
else
        read -s -p "Enter your password: " passwd
        sudo useradd -p $passwd $username
fi

if [[ $? -eq 0 ]]
then
        echo -e "\nUser has been added to the system."
else
        echo -e "\nFailed to add to the system."
fi

sudo passwd -e $username

echo "$username, $passwd," $(whoami)