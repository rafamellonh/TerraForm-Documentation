#Data Block
data "azurerm_resource_group" "RG01-PORTAL" {
    name = "RG01"    
}

#Local variables
locals {
  storage_account_sku = "Standard"
}

#Variables block
variable "account_replication_type" {
    description = "Tipo de replica"
    type = string
    default = "LRS"
}

#Resource Block
resource "azurerm_storage_account" "stomello4401" {
    name = "stomello4401"
    account_replication_type = var.account_replication_type
    account_tier = local.storage_account_sku
    location = data.azurerm_resource_group.RG01-PORTAL.location
    resource_group_name = data.azurerm_resource_group.RG01-PORTAL.name

    tags = {
      "ower" = "RM"
    }
}

#Output Block
output "storage_account_id" {
  value = azurerm_storage_account.stomello4401.id
}
