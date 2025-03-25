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

data "azurerm_resource_group" "Rafael" {
    name = "Rafael"
    
}

module "dns_zone_module" {
    source = "./mod-dns"
    #Declarar valores para serem usados no módulo (essas variaveis estao no arquivo mod-dns/variables.tf)
    dns_name = "mello.com"
    rg_name = data.azurerm_resource_group.Rafael.name
}

#Output DNS Zone ID
#Este output esta declarado no arquivo mod-dns/output.tf
output "dns_zone_id" {
    value = module.dns_zone_module.dns_zone_id
}