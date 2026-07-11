variable "subscription_id" {
  type    = string
  default = null
}

variable "tenant_id" {
  type    = string
  default = null
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "resource_group_name" {
  type    = string
  default = "RG-AF-HELLO-001"
}

variable "virtual_network_name" {
  type    = string
  default = "NET-AF-HELLO-001"
}

variable "virtual_network_address_space" {
  type    = string
  default = "10.42.0.0/16"
}

variable "subnet_name" {
  type    = string
  default = "SNET-AF-HELLO-001"
}

variable "subnet_address_prefix" {
  type    = string
  default = "10.42.1.0/24"
}

variable "network_security_group_name" {
  type    = string
  default = "NSG-AF-HELLO-001"
}

variable "public_ip_name" {
  type    = string
  default = "PIP-AF-HELLO-001"
}

variable "network_interface_name" {
  type    = string
  default = "NIC-AF-HELLO-001"
}

variable "virtual_machine_name" {
  type    = string
  default = "VM-AF-HELLO-001"
}

variable "virtual_machine_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "admin_ssh_key" {
  type = string
}
