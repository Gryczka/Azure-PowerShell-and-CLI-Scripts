#!/bin/bash
#A script to install the Azure CLI
##Sourced from the Microsoft Azure Documentation
###https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest
clear

echo "Installing the Azure CLI"
echo "1-Modifying your sources list"
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
	sudo tee /etc/apt/sources.list.d/azure-cli.list
echo "2-Getting the Microsoft signing key"
sudo apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893
echo "2.1-Installing new key as well"
curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "3-Install the CLI"
sudo apt-get install apt-transport-https
sudo apt-get update && sudo apt-get install azure-cli
