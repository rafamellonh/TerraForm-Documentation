# Usando um Grupo de Recursos Existente no Azure com Terraform

Se você já tem um **Resource Group (Grupo de Recursos)** criado no Azure e deseja utilizá-lo no Terraform, siga estas etapas:

## 1️⃣ Configurar o Provedor do Azure
Antes de referenciar o grupo de recursos, certifique-se de configurar o provedor `azurerm` no Terraform:

```hcl
provider "azurerm" {
  features {}
}
```

---

## 2️⃣ Referenciar um Grupo de Recursos Existente
Para utilizar um grupo de recursos já criado, utilize o recurso `data "azurerm_resource_group"`:

```hcl
data "azurerm_resource_group" "meu_rg" {
  name = "nome-do-seu-resource-group"
}
```

Aqui, estamos buscando informações do grupo de recursos já existente no Azure.

---

## 3️⃣ Usar o Grupo de Recursos nos Recursos do Terraform
Agora, qualquer recurso pode usar esse grupo de recursos referenciando `data.azurerm_resource_group.meu_rg.name`. Exemplo:

```hcl
resource "azurerm_storage_account" "meu_storage" {
  name                     = "meustorageaccount"
  resource_group_name      = data.azurerm_resource_group.meu_rg.name
  location                 = data.azurerm_resource_group.meu_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
```

---

## 🔹 Explicação
- `data "azurerm_resource_group" "meu_rg"` → Busca o grupo de recursos já existente.
- `data.azurerm_resource_group.meu_rg.name` → Usa o nome do grupo de recursos.
- `data.azurerm_resource_group.meu_rg.location` → Usa a mesma localização do grupo de recursos.

Dessa forma, o Terraform **não tenta recriar o grupo de recursos**, apenas o utiliza para novos recursos.

---

