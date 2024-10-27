variable "location" {
  description = "EasTus - Região dos recursos"
  type        = string # não é obrigatório
  default     = "eastus"
}

variable "account_tier" {
  description = "Tier da Storage Account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da storage account"
  type        = string
  default     = "LRS"


}
 