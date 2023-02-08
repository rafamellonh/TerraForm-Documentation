
resource "azurerm_network_interface" "nic-vm01" {
  name                = "nic-vm01"
  location            = var.location
  resource_group_name = azurerm_resource_group.RG-VM.name

  ip_configuration {
    name                          = "ip-internal-vm01"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip-vm01.id

  }

}

resource "azurerm_windows_virtual_machine" "vm-01" {
  name                = "vm-01"
  resource_group_name = azurerm_resource_group.RG-VM.name
  location            = var.location
  size                = "Standard_B1s"
  admin_username      = "rafael.mello"
  admin_password      = "@#Rafa,321@#"
  network_interface_ids =   [
    azurerm_network_interface.nic-vm01.id
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"

  }

}