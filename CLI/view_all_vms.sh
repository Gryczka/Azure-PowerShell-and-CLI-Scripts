#!/bin/bash
#Trivial Script to return all of your VM ids
az vm list --query "[].id" -o tsv
