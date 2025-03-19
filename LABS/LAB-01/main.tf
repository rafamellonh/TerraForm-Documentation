data "azurerm_resource_group" "Rafael" {
    name = "Rafael"
  
}

output "resource_group_id" {
    value = data.azurerm_resource_group.Rafael.id
}