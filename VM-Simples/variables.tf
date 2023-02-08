variable "location" {
  description = "Localização do recurso"
  default     = "eastus"
}

variable "tags" {
  type = map(string)
  default = {
    owner      = "Rafael Mello"
    Department = "DEV"
  }
}