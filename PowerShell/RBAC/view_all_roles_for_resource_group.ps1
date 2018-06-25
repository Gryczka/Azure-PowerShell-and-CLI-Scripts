#Script to list all role assignments for a specific Resource Group

#Prompt User for resource group name
$resourceGroupName = Read-Host -Prompt 'Which Resource Group do you want to list the role assignments for?'

Get-AzureRmRoleAssignment -ResourceGroupName $resourceGroupName