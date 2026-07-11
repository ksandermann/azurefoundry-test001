variable "name_prefix" {
  description = "Prefix used for all Azure resource names."
  type        = string
}

variable "location" {
  description = "Azure region for deployed resources."
  type        = string
}

variable "admin_username" {
  description = "Admin username for the Linux virtual machine."
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "SSH public key used to access the virtual machine."
  type        = string
}

variable "vm_size" {
  description = "Azure VM SKU size."
  type        = string
  default     = "Standard_B1s"
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnet_prefixes" {
  description = "Address prefixes for the VM subnet."
  type        = list(string)
  default     = ["10.10.1.0/24"]
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
  default     = {}
}
