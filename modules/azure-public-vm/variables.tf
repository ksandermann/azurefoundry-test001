variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "vnet_cidr" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "network_security_group_name" {
  type = string
}

variable "public_ip_name" {
  type = string
}

variable "network_interface_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "vm_admin_username" {
  type = string
}

variable "vm_admin_ssh_public_key" {
  type = string
}

variable "custom_data_b64" {
  type    = string
  default = null
}
