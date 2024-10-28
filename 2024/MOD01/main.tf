terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.7.0"
    }
  }
}




resource "azurerm_virtual_network" "vnet01" {
    address_space = [ "192.168.0.0/16" ]
    location = azurerm_resource_group.Rafael.location
    name = "vnet01"
    resource_group_name = azurerm_resource_group.Rafael.name
    
}

resource "azurerm_subnet" "sub01" {
    address_prefixes = [ "192.168.1.0/24" ]
    name = "sub01"
    resource_group_name = azurerm_resource_group.Rafael.name
    virtual_network_name = azurerm_virtual_network.vnet01.name
    
}


resource "azurerm_network_security_group" "nsg01" {
    location = azurerm_resource_group.Rafael.location
    name = "ng01"
    resource_group_name = azurerm_resource_group.Rafael.name
    

    security_rule  {
      access = "Allow"
      name = "rule01"
      priority = "300"
      direction = "Inbound"
      protocol = "Tcp"
      source_port_range = "*"
      destination_port_range = "3389"
      source_address_prefix = "*"
      destination_address_prefix = "*"
    } 
}

resource "azurerm_network_interface" "nic01" {
    location = azurerm_resource_group.Rafael.location
    name = "nic01"
    resource_group_name = azurerm_resource_group.Rafael.name
    ip_configuration {
        name = "internal"
        private_ip_address_allocation = "Dynamic"
        subnet_id = azurerm_subnet.sub01.id
    }
    
}

resource "azurerm_windows_virtual_machine" "name" {
    admin_password = "@#Rafa,321@#"
    admin_username = "rafael.admin"
    location = azurerm_resource_group.Rafael.location
    name = "vm01"
    network_interface_ids = [
    azurerm_network_interface.nic01.id,
    ]
    resource_group_name = azurerm_resource_group.Rafael.name
    size = "Standard_B2ms"

    os_disk {
        caching = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2016-Datacenter"
      version   = "latest"
    }
    

    
}