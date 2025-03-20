# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "azurerm_virtual_network" "vnet-import" {
  address_space                  = ["10.0.0.0/16"]
  bgp_community                  = null
  dns_servers                    = []
  edge_zone                      = null
  flow_timeout_in_minutes        = 0
  location                       = "eastus"
  name                           = "vnet-import"
  private_endpoint_vnet_policies = "Disabled"
  resource_group_name            = "Rafael"
  subnet = [{
    address_prefixes                              = ["10.0.0.0/24"]
    default_outbound_access_enabled               = false
    delegation                                    = []
    id                                            = "/subscriptions/b0586674-03cf-4c83-a967-e5d72c607b1a/resourceGroups/Rafael/providers/Microsoft.Network/virtualNetworks/vnet-import/subnets/default"
    name                                          = "default"
    private_endpoint_network_policies             = "Disabled"
    private_link_service_network_policies_enabled = true
    route_table_id                                = ""
    security_group                                = ""
    service_endpoint_policy_ids                   = []
    service_endpoints                             = []
  }]
  tags = {}
}
