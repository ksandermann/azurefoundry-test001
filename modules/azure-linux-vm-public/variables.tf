variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "virtual_network_address_space" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_address_prefix" {
  type = string
}

variable "network_security_group_name" {
  type = string
}

variable "inbound_rules" {
  type = map(object({
    priority  = number
    direction = string
    access    = string
    protocol  = string
    port      = number
  }))
}

variable "public_ip_name" {
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

variable "custom_data_b64" {
  type    = string
  default = null
}
