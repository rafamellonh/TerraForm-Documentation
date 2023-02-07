resource "azurerm_resource_group" "RG-VNET" {
  name     = "VNET01"
  location = "eastus"

}

resource "azurerm_virtual_network" "VNET02" {
  name                = "VNET02"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.RG-VNET.name
  address_space       = ["10.11.0.0/16"]
  dns_servers         = ["8.8.8.8", "1.1.1.1"]

}

resource "azurerm_subnet" "subnet" {
  count = 3
  name                 = "sub${count.index}"
  resource_group_name  = azurerm_resource_group.RG-VNET.name
  virtual_network_name = azurerm_virtual_network.VNET02.id
  address_prefixes     = ["10.11.${count.index}.0/24"]

  

}
