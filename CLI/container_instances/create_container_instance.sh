#!/bin/bash
# This is a script creating a basic conatiner instance
az group create --name containerInstanceRG --location eastus
az container create --resource-group containerInstanceRG --name nginx-container --image nginx --dns-name-label my-nginx --ports 80
