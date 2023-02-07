# Vai capturar o location conforme preenchido o for_each em main.tf

output "localtion-resource-group-EUA" {
  value = azurerm_resource_group.for_each["EUA"].location
}

output "localtion-resource-group-Europa" {
  value = azurerm_resource_group.for_each["Europa"].location
}

output "localtion-resource-group-Asia" {
  value = azurerm_resource_group.for_each["Asia"].location
}