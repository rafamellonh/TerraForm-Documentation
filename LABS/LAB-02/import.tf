import {
  to = azurerm_resource_group.Rafael
  id = "/subscriptions/b0586674-03cf-4c83-a967-e5d72c607b1a/resourceGroups/Rafael"
}

import {
  to = azurerm_virtual_network.vnet-import
  id = "/subscriptions/b0586674-03cf-4c83-a967-e5d72c607b1a/resourceGroups/Rafael/providers/Microsoft.Network/virtualNetworks/vnet-import"
}

#terraform plan -generate-config-out="vnet-import.tf"