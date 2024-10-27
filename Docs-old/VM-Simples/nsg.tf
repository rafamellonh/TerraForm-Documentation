resource "azurerm_network_security_group" "nsg001" {
  name                = "nsg001"
  resource_group_name = azurerm_resource_group.RG-VM.name
  location            = var.location

  security_rule {
    name                       = "RDP"
    priority                   = "200"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "3389"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = var.tags

}
