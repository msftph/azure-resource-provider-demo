$global:subID=$(az account show --query id --output tsv)
if ([string]::IsNullOrWhitespace($rgName)){    
    $global:rgName = Read-Host -Prompt "Enter a resource group name"    
}
if ([string]::IsNullOrWhitespace($funcName)){
    $global:funcName = Read-Host -Prompt "Enter the provider's function app name"    
}