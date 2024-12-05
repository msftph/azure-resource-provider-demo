. .\params.ps1
$addURI="https://management.azure.com/subscriptions/$subID/resourceGroups/$rgName/providers/Microsoft.CustomProviders/resourceProviders/$funcName/users/testuser?api-version=2018-09-01-preview"
$fullName = Read-Host -Prompt "Enter the Full Name" 
$location = Read-Host -Prompt "Enter the Location"
az rest --method put --uri $addURI --body "{'properties':{'FullName': '$fullName', 'Location': '$location'}}"