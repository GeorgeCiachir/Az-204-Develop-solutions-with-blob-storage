# Define resource group name
$resourceGroup="developWithBlobStorage"
$location = "westeurope"

# Login to Azure
az login
az account set --subscription "TestAccount"

# List the current resource groups table format
az group list --output table

# Create a resource group if needed
az group create `
    --name $resourceGroup `
    --location $location

# Create a storage account
$storageAccount=developwithblobstorage

az storage account create `
    --name $storageAccount `
    --resource-group $resourceGroup `
    --location $location `
    --sku Standard_GRS `
    --kind StorageV2