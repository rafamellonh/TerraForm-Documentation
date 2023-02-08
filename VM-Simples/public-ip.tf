resource "azurerm_public_ip" "pip-vm01" {
  name                = "pip-vm01"
  resource_group_name = azurerm_resource_group.RG-VM.name
  location            = var.location
  allocation_method   = "Static"

  tags = var.tags
}