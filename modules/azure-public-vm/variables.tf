variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_address_prefix" {
  type = string
}

variable "public_ip_name" {
  type = string
}

variable "network_security_group_name" {
  type = string
}

variable "network_interface_name" {
  type = string
}

variable "virtual_machine_name" {
  type = string
}

variable "virtual_machine_size" {
  type    = string
  default = "Standard_B1s"
}

variable "virtual_machine_admin_username" {
  type = string
}

variable "virtual_machine_admin_ssh_key" {
  type = string
}
