output "sto-id" {
  value = azurerm_storage_account.mellosto012.id
}


output "subnet_id" {
  value = azurerm_subnet.SUB01.id
}

output "network_security_group_id" {
  value = azurerm_network_security_group.NSG01.id
}