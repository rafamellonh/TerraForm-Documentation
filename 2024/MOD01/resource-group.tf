resource "azurerm_resource_group" "Rafael" {
    location = "eastus"
    name = "Rafael"    

      lifecycle {
    prevent_destroy = true
  }

  
}

#  terraform import azurerm_resource_group.Rafael /subscriptions/Sb0586674-03cf-4c83-a967-e5d72c607b1a/resourceGroups/Rafael
