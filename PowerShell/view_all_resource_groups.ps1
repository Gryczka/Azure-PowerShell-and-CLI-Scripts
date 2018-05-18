#Trivial script to get all resource groups listed with regions
echo "Confirming that you are logged in and returning the current Context"                          #Checking Context in order to confirm if user is logged in (login check from https://stackoverflow.com/a/42229650)
Try {
    Get-AzureRmContext
}
Catch{                                                                                              #If user is not logged in, welp, we prompt them to log in
    if ($_ -like "*Login-AzureRmAccount to login*"){
        Login-AzureRmAccount
    }
}
echo "Retrieving resource groups and their regions"
Get-AzureRmResourceGroup | Select-Object ResourceGroupName,Location