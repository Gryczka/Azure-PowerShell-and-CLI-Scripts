#Finds and returns unattached managed disks
$managedDisks = Get-AzureRmDisk

foreach ($disk in $managedDisks) {  # For Each managed disk
    if($disk.ManagedBy -eq $null){    # if the disk is unattached
        $disk.Id                      # return that disk's ID
    }
} 