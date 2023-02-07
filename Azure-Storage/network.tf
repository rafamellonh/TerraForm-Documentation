resource "azurerm_resource_group" "VNET-USA" {
  name     = "VNET"
  location = var.location
  tags     = local.common_tags
}
resource "azurerm_network_security_group" "NSG01" {
  name                = "NSG01"
  location            = var.location
  resource_group_name = azurerm_resource_group.VNET-USA.name

  security_rule {
    name                       = "regra01"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "3389"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  tags = local.common_tags
}
resource "azurerm_virtual_network" "VNET01" {
  name                = "VNET01"
  location            = var.location
  resource_group_name = azurerm_resource_group.VNET-USA.name
  address_space       = ["10.10.0.0/16"]
  dns_servers         = ["8.8.8.8", "1.1.1.1"]

  tags = local.common_tags

}

resource "azurerm_subnet" "SUB01" {
  name                 = "SUB01"
  resource_group_name  = azurerm_resource_group.VNET-USA.name
  virtual_network_name = azurerm_virtual_network.VNET01.name
  address_prefixes     = ["10.10.2.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "SubAssociate" {
  subnet_id = azurerm_subnet.SUB01.id
  network_security_group_id = azurerm_network_security_group.NSG01.id
}