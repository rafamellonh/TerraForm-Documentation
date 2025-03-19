data "azurerm_resource_group" "Rafael" {
    name = "Rafael"
  
}

output "resource_group_id" {
    value = data.azurerm_resource_group.Rafael.id
}

resource "azurerm_virtual_network" "vnet-1" {
    address_space = [ "10.10.0.0/16" ]
    location = var.location
    name = "vnet01"
    resource_group_name = var.resource_group_name

    tags = var.tags
    
}

output "vnet-name" {
    value = azurerm_virtual_network.vnet-1.name  
}