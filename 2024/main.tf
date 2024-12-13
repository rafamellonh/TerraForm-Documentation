#Settings Bloc
terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.93.0"
    }
  }
}

provider "azurerm" {
    features {
    }
    subscription_id = "b0586674-03cf-4c83-a967-e5d72c607b1a"
    client_id = "e3831ec2-1f30-400b-870c-fa682f08771e"
    client_secret = "AeZ8Q~z-VG8PAv38sBcMmCpJ-NCcmSAmVVGdZaBg"
    tenant_id = "31afaf0d-4d06-4349-b0a9-83d163512c8a"

    resource_provider_registrations = "none"
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
