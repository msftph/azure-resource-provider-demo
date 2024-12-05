. .\params.ps1
$id = Read-Host -Prompt "Enter the user ID"
$requestURI="https://management.azure.com/subscriptions/${subID}/resourceGroups/${rgName}/providers/Microsoft.CustomProviders/resourceProviders/${funcName}/users/${id}?api-version=2018-09-01-preview"
az rest --method get --uri $requestURI