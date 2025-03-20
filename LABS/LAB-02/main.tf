terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "4.23.0"
        }
    
        random = {
        source  = "hashicorp/random"
        version = "3.7.1"
        }
    }
}
/*
data "azurerm_resource_group" "Rafael" {
    name = "Rafael"
    
}


output "out-resource-group" {
    value = data.azurerm_resource_group.Rafael
  
}*/