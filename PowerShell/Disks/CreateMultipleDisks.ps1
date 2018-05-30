###Disk Setup###

#Variables with Disk Properties <REPLACE THESE TO REFLECT YOUR NEEDS>
$baseDiskName = "YourDiskName"
$storageType = "PremiumLRS" #PremiumLRS or StandardLRS
$location = "East US"
$osType = "Windows" #Windows or Linux
$diskSize = 1023 #1TB
$diskCount = 5
$diskResourceGroupName = "YourResourceGroupName"

#Setup Disk Config
$diskConfig = New-AzureRmDiskConfig -Location $location -DiskSizeGB $diskSize -AccountType $storageType -OsType $osType -CreateOption Empty;

#Loop through Disk Creation
$diskIterator = 1
Do{
$diskName = $baseDiskName + $diskIterator
New-AzureRmDisk -ResourceGroupName $diskResourceGroupName -DiskName $diskName -Disk $diskconfig;
$diskIterator += 1
}
Until ($diskIterator -gt $diskCount)