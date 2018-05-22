#!/bin/bash
#Script to deallocate all VMs
az vm deallocate --ids $(
	az vm list --query "[].id" -o tsv
)
