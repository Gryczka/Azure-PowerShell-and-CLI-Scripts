#Trivial script to get all of a users vms
echo "Confirming that you are logged in and returning the current Context"                          #Checking Context in order to confirm if user is logged in (login check from https://stackoverflow.com/a/42229650)
Try {
    Get-AzureRmContext
}
Catch{                                                                                              #If user is not logged in, welp, we prompt them to log in
    if ($_ -like "*Login-AzureRmAccount to login*"){
        Login-AzureRmAccount
    }
}
echo "Retrieving VMs"                                           #Getting the users vms
Get-AzureRmVM # | ft Name, ResourceType, Location -AutoSize 