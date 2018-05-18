#Trivial script to get all resource groups listed with regions
##Source: John Savill
###http://www.itprotoday.com/microsoft-azure/savills-faqs-view-your-azure-resources-using-powershell
echo "Retrieving resource groups and their regions"
Get-AzureRmResource | ft Name, ResourceType, Location -AutoSize