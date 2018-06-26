#Script which lists out the roles for a given user

#Prompt User for email
$userEmail = Read-Host -Prompt 'Provide the email of the user you want to list the roles of: '

Get-AzureRmRoleAssignment -SignInName $userEmail