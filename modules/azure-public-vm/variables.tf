variable "name_prefix" {
  type        = string
  description = "Name prefix for all Azure resources."
}

variable "location" {
  type        = string
  description = "Azure region for all resources."
}

variable "vnet_cidr" {
  type        = string
  description = "CIDR for the virtual network."
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR for the VM subnet."
}

variable "vm_size" {
  type        = string
  description = "Azure VM size."
}

variable "admin_username" {
  type        = string
  description = "Admin username for the Linux VM."
}

variable "admin_ssh_public_key" {
  type        = string
  description = "SSH public key used for VM access."
}

variable "custom_data" {
  type        = string
  description = "Base64-encoded cloud-init/custom data."
  default     = null
}
