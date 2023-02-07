resource "azurerm_resource_group" "for_each" {
  for_each = {
    "EUA" = "East US"
    "Europa" = "West Europe"
    "Asia" = "Japan East"
  }
# Sera criado um RG em cada região e o nome será  o PAIS escrito ali e a região será a que está relacionada ao pais
    name = each.key
    location = each.value

    tags = local.common_tags

}