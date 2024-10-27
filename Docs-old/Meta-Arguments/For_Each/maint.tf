terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.42.0"
    }
  }

backend "azurerm" {
  resource_group_name = "RG01"
    storage_account_name = "mellosto012"
    container_name       = "ct-dados"
    key                  = "azure-vnet-for-each/terraform.tfstate"
}

}

provider "azurerm" {
  features {
    
  }
}

