variable "name_prefix" {
  description = "Prefix used for all Azure resource names in this workspace."
  type        = string
  default     = "hello-dev"
}

variable "location" {
  description = "Azure region for deployment."
  type        = string
  default     = "eastus"
}

variable "admin_username" {
  description = "Linux admin username for the VM."
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "SSH public key for Linux admin access."
  type        = string
}

variable "vm_size" {
  description = "VM SKU size used in this workspace."
  type        = string
  default     = "Standard_B1s"
}

variable "tags" {
  description = "Tags shared across resources."
  type        = map(string)
  default = {
    environment = "dev"
    project     = "azurefoundry-test001"
  }
}
