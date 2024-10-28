resource "azurerm_resource_group" "Rafael" {
  location = "eastus"
  name     = "Rafael"

  lifecycle {
    prevent_destroy = true
  }


}


