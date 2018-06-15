#Deletes all unattached managed disks
$managedDisks = Get-AzureRmDisk

foreach ($disk in $managedDisks) {          # For all managed disks
    if($disk.ManagedBy -eq $null){          # if disk is unmanaged
        $disk | Remove-AzureRmDisk -Force   # DELETE IT!!! :-o
    }
} 