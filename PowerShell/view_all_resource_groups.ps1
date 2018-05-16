#Trivial script to get all resource groups listed with regions
echo "Retrieving resource groups and their regions"
Get-AzureRmResourceGroup | Select-Object ResourceGroupName,Location