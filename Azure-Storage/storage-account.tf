
# Resource Group
resource "azurerm_resource_group" "RG01" {
  name     = "RG01"
  location = var.location
  tags     = local.common_tags
}



resource "azurerm_storage_account" "mellosto012" {
  name                     = "mellosto012"
  resource_group_name      = azurerm_resource_group.RG01.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = local.common_tags

  #habilita o versionamento do tfstate
  blob_properties {
    versioning_enabled = true
  }
}

resource "azurerm_storage_container" "dados" {
  name                  = "ct-dados"
  storage_account_name  = azurerm_storage_account.mellosto012.name
  container_access_type = "private"
}