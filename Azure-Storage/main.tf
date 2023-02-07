terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.42.0"
    }
  }

  #salva o state remotamente
  backend "azurerm" {
    resource_group_name  = "RG01"
    storage_account_name = "mellosto012"
    container_name       = "ct-dados"
    key                  = "azure-vnet/terraform.tfstate"
  }

}


#Modulo remote state do terraform
data "terraform_remote_state" "vnet" {
  backend = "azurerm"

  config = {
    resource_group_name  = "RG01"
    storage_account_name = "mellosto012"
    container_name       = "ct-dados"
    key                  = "azure-vnet/terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
}
