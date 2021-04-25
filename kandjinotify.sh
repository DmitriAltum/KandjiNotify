#!/bin/bash

#Pulls the logged in user from console and sets user "variable" to it.
user=$(stat -f%Su /dev/console)

#Posts the alert to the user
sudo /usr/local/bin/kandji display-alert --title "Device Enrollment Complete" --message "Device enrollment has completed and all necessary apps have been downloaded. Don't forget to check Self Service for optional apps!"

#Removes this script to prevent it from being called again when the auto-app is modified.
sudo rm -f $0
