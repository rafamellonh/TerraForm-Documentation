resource "azuread_user" "mello" {
  user_principal_name = "mello${var.domain}"
  display_name        = "Mello"
  mail_nickname       = "mello"
  password            = "Guco1776"
  department          = "TI"
}

resource "azuread_user" "RH-mello" {
  user_principal_name = "RHmello${var.domain}"
  display_name        = "Mello RH"
  mail_nickname       = "RHmello"
  password            = "Guco1776"
  department          = "RH"
}

