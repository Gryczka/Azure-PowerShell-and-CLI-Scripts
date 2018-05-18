#Trivial script to get all resource groups listed with regions
##Source: John Savill
###http://www.itprotoday.com/microsoft-azure/savills-faqs-view-your-azure-resources-using-powershell
echo "Confirming that you are logged in and returning the current Context"                          #Checking Context in order to confirm if user is logged in (login check from https://stackoverflow.com/a/42229650)
Try {
    Get-AzureRmContext
}
Catch{                                                                                              #If user is not logged in, welp, we prompt them to log in
    if ($_ -like "*Login-AzureRmAccount to login*"){
        Login-AzureRmAccount
    }
}
echo "Retrieving VMs"                                           #Getting the users resources
$vms = Get-AzureRmVM
foreach($vm in $vms){
    echo $vm
    $power = $vm.Status
    echo "$power"
}