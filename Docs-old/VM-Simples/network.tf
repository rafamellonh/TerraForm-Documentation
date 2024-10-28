resource "azurerm_resource_group" "RG-VM" {
  name     = "RG-VM"
  location = var.location

  tags = var.tags
}

resource "azurerm_virtual_network" "vnet001" {
  name                = "vnet001"
  resource_group_name = azurerm_resource_group.RG-VM.name
  location            = var.location
  address_space       = ["10.10.0.0/16"]
  dns_servers         = ["8.8.8.8"]

  tags = var.tags
}

resource "azurerm_subnet" "subnet" {
  name                 = "sub001"
  resource_group_name  = azurerm_resource_group.RG-VM.name
  virtual_network_name = azurerm_virtual_network.vnet001.name
  address_prefixes     = ["10.10.1.0/24"]

}


resource "azurerm_subnet_network_security_group_association" "nsg001-associate" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg001.id

}