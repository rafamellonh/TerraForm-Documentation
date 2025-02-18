1️⃣ Definir o provedor do Azure
Primeiro, configure o provedor azurerm (caso ainda não tenha feito):

hcl
Copy
Edit
provider "azurerm" {
  features {}
}
2️⃣ Referenciar um Grupo de Recursos já existente
Use o recurso data "azurerm_resource_group" para buscar um grupo de recursos já criado:

h
Copy
Edit
data "azurerm_resource_group" "meu_rg" {
  name = "nome-do-seu-resource-group"
}
Aqui, você está dizendo ao Terraform para buscar as informações desse grupo de recursos existente.

3️⃣ Usar o Grupo de Recursos nos recursos
Agora, qualquer recurso pode usar esse grupo de recursos existente referenciando data.azurerm_resource_group.meu_rg.name. Exemplo:

hcl
Copy
Edit
resource "azurerm_storage_account" "meu_storage" {
  name                     = "meustorageaccount"
  resource_group_name      = data.azurerm_resource_group.meu_rg.name
  location                 = data.azurerm_resource_group.meu_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
