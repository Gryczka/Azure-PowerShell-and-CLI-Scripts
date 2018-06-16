#Script to help user find images

#Get all of the regions in which there are vms (source: John Savill, IT Pro http://www.itprotoday.com/microsoft-azure/view-available-regions-azure-services-using-powershell)
echo "Listing all regions"
$resources = Get-AzureRmResourceProvider -ProviderNamespace Microsoft.Compute
$resources.ResourceTypes.Where{($_.ResourceTypeName -eq 'virtualMachines')}.Locations

#Asking the user for which region they want to see publishers
$location = Read-Host -Prompt 'Which Region do you want to see the publishers for?'
Get-AzureRMVMImagePublisher -Location $location | Select PublisherName