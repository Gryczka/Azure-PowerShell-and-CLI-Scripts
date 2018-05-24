#Trivial script to get all resource groups listed with regions
Get-AzureRMStorageAccount | Select StorageAccountName, Location