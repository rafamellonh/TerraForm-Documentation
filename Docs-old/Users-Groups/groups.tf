
# Grupo dinâmico
data "azuread_client_config" "current" {}
resource "azuread_group" "TI" {
  display_name     = "TI"
  #owners           = [data.azuread_client_config.current.object.id]
  security_enabled = true
  types            = ["DynamicMembership"]

  dynamic_membership {
    enabled = true
    rule    = "user.department -eq \"TI\""
  }
}

/*
## Gruppo com usuários
resource "azuread_group" "RH" {
    display_name = "RH"
    security_enabled = true

    members = [ 
        azuread_user.RHmello.object.id
    ]
  
} 
*/