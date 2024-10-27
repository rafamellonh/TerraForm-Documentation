resource "azurerm_public_ip" "ip-vm01" {
  name                = "ip-vm01"
  resource_group_name = azurerm_resource_group.VNET-USA.name
  location            = var.location
  allocation_method   = "Static"

  tags = local.common_tags
}

resource "azurerm_network_interface" "nic-vm01" {
  name                = "nic-vm01"
  resource_group_name = azurerm_resource_group.VNET-USA.name
  location            = var.location

  ip_configuration {
    name = "ip-internal"
    #aqui ele busca as info da modulo outputs e da main.tf que tem remote state
    #subnet_id                     = data.terraform_remote_state.vnet.outputs.id
    subnet_id = data.terraform_remote_state.vnet.outputs.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.ip-vm01.id
  }

  tags = local.common_tags

}

resource "azurerm_windows_virtual_machine" "vm01" {
  name                = "vm01"
  resource_group_name = azurerm_resource_group.VNET-USA.name
  location            = var.location
  size                = "Standard_B1s"
  admin_username      = "rafael.admin"
  admin_password      = "@#Rafa,321@#"
  network_interface_ids = [
    azurerm_network_interface.nic-vm01.id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    #
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"

  }

}


/*
## Provisioner 
Provisioner "local-exec" {
  command = "echo ${self.public_ip_address_id} >> public_ip.txt"
}

*/

