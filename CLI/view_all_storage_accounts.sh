#!/bin/bash
#Script to list the names of all storage accounts
az storage account list --query "[].id" -o tsv
