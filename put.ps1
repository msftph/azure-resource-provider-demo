. .\params.ps1
$fullName = Read-Host -Prompt "Enter the Full Name" 
$location = Read-Host -Prompt "Enter the Location"
$id = Read-Host -Prompt "Enter the user ID"
$addURI="https://management.azure.com/subscriptions/${subID}/resourceGroups/${rgName}/providers/Microsoft.CustomProviders/resourceProviders/${funcName}/users/${id}?api-version=2018-09-01-preview"
az rest --method put --uri $addURI --body "{'properties':{'FullName': '$fullName', 'Location': '$location'}}"