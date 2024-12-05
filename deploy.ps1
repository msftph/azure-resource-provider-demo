$rgName = Read-Host -Prompt "Enter a resource group name"
$location = Read-Host -Prompt "Enter the location (i.e. eastus)"
$funcName = Read-Host -Prompt "Enter the provider's function app name"
$templateUri = "https://raw.githubusercontent.com/Azure/azure-docs-json-samples/master/custom-providers/customprovider.json"
az group create --name $rgName --location "$location"
az deployment group create --resource-group $rgName --template-uri $templateUri --parameters funcName=$funcName &&
Read-Host -Prompt "Press [ENTER] to continue ..."