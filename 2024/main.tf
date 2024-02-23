#Settings Bloc
terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.93.0"
    }
  }
}

#Provider Block
/* provider "azurerm" {
    features {
    }
    subscription_id = ""
    client_id = ""
    client_secret = ""
    tenant_id = ""
        
}
*/ 

# Module Block
module "storage_module" {
  source = "./Storage_account"
}

#Output Block
output "storage_account_id" {
  value = module.storage_module.storage_account_id
}
