variable "location" {
  description = "Azure region for all resources."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
}

variable "prefix" {
  description = "Naming prefix used for all resources in this module."
  type        = string
}

variable "admin_username" {
  description = "Admin username for the Linux VM."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key content for VM authentication."
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Azure VM size."
  type        = string
  default     = "Standard_B1s"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnet_prefixes" {
  description = "Address prefixes for the VM subnet."
  type        = list(string)
  default     = ["10.10.1.0/24"]
}

variable "ssh_allowed_cidr" {
  description = "CIDR block permitted to SSH to the VM."
  type        = string
  default     = "0.0.0.0/0"
}

variable "tags" {
  description = "Tags applied to all resources."
  type        = map(string)
  default     = {}
}
