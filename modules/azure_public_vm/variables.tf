variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "virtual_network_cidr" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_cidr" {
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
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_ssh_public_key" {
  type = string
}

variable "os_disk_name" {
  type = string
}

variable "custom_data" {
  type = string
}

variable "tags" {
  type = map(string)
}
