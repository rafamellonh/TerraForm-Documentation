resource "azurerm_resource_group" "Rafael" {
    location = "eastus"
    name = "Rafael"   
    tags = {
      "tst" = "import"
    }
}