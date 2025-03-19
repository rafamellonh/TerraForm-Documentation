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

module "vnet_module" {
  source = "./VNET-Storage"

}
