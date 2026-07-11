variable "tenant_id" {
  type    = string
  default = "supersecrret"
}

variable "subscription_id" {
  type    = string
  default = "supersecrret"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "resource_group_name" {
  type    = string
  default = "rghello001"
}

variable "vnet_name" {
  type    = string
  default = "vnethello001"
}

variable "vnet_address_space" {
  type    = string
  default = "10.10.0.0/16"
}

variable "subnet_name" {
  type    = string
  default = "subnethello001"
}

variable "subnet_address_prefix" {
  type    = string
  default = "10.10.1.0/24"
}

variable "public_ip_name" {
  type    = string
  default = "piphello001"
}

variable "network_security_group_name" {
  type    = string
  default = "nsghello001"
}

variable "network_interface_name" {
  type    = string
  default = "nichello001"
}

variable "virtual_machine_name" {
  type    = string
  default = "vmhello001"
}

variable "virtual_machine_size" {
  type    = string
  default = "Standard_B1s"
}

variable "virtual_machine_admin_username" {
  type    = string
  default = "azureuser"
}

variable "virtual_machine_admin_ssh_key" {
  type    = string
  default = "ssh-rsaSUPERSECRET"
}
