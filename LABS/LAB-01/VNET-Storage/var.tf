variable "location" {
    type = string
    default = "East US"
}

variable "resource_group_name" {
    type = string
    default = "Rafael"
}

variable "tags" {
    type = map(string)
    default = {
        environment = "LAB"
        owner = "Rafael"
    }
}