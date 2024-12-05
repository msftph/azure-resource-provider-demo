# Azure Resource Provider Demo

Creates the custom resoruce provider example from the azure docs. 

https://learn.microsoft.com/en-us/azure/azure-resource-manager/custom-providers/create-custom-provider?tabs=azure-cli

The resource provider is backed by an azure function with http trigger and a storage account to store the custom resources.

## Deploy

```powershell
.\deploy.ps1
```

## Ping

```powershell
.\ping.ps1
```

## Get

```powershell
.\get.ps1
```

## Create

```powershell
.\put.ps1
```

## Delete

```powershell
.\delete.ps1
```