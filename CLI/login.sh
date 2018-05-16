#!/bin/bash
#A terribly simple script which runs the Azure CLI login command.
clear

echo "Logging in to Azure (Interactive Login)"
echo "-You will need to go to 'https://microsoft.com/devicelogin' and enter the provided code."
echo "-You can access devicelogin through a browser on another device if necessary, but the browser will need to be able to execute javascript"
az login
