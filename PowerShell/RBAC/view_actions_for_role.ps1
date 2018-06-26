#Script to list all actions for a specified role

#Prompt User for role name
$roleName = Read-Host -Prompt 'Which Role do you want to see the actions for? (eg. Contributor)'

Get-AzureRmRoleDefinition $roleName | FL Actions, NotActions