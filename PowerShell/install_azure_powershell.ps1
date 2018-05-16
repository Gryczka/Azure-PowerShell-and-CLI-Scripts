#Setup script to install azure powershell, requires that you be able to install PowerShellGet
##Sourced from the Azure Documentation
###https://docs.microsoft.com/en-us/powershell/azure/install-azurerm-ps?view=azurermps-6.0.0
echo "Installing Azure PowerShell"
echo "1-Installing/Updating PowerShellGet"
Install-Module PowerShellGet -Force

echo "2-Installing AzureRM Modules (Answer 'Yes' or 'Yes to all')"
Install-Module -Name AzureRM -AllowClobber

echo "3-Import AzureRM Module"
Import-Module -Name AzureRM