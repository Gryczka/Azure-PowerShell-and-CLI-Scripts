#Script to backup a webapp

#Prompt User for WebApp Name
$webAppName = Read-Host -Prompt 'What is the name of the WebApp you are backing up?'

#Prompt User for Resource Group
$resourceGroupName = Read-Host -Prompt 'What is the Name of the Resource Group your Web App is located in?'

#Prompt User for Storage Account
$storageAccountURL = Read-Host -Prompt 'Please enter the URL of the Storage Account you want to back up your WebApp to.'

#Prompt User for Backup Name
$backupName = Read-Host -Prompt 'Please enter a name for you back up'

New-AzureRmWebAppBackup -ResourceGroupName $resourceGroupName -Name $webAppName `
-StorageAccountUrl $storageAccountURL -BackupName $backupName