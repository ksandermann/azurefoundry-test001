variable "environment" {
  type        = string
  description = "Azure cloud environment."
  default     = "public"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID."
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID."
}

variable "client_id" {
  type        = string
  description = "Azure client/application ID."
}

variable "client_secret" {
  type        = string
  description = "Azure client secret."
  sensitive   = true
}

variable "name_prefix" {
  type        = string
  description = "Prefix used for resource naming."
  default     = "helloworld001"
}

variable "location" {
  type        = string
  description = "Azure location."
  default     = "eastus"
}

variable "vnet_cidr" {
  type        = string
  description = "VNET CIDR."
  default     = "10.40.0.0/16"
}

variable "subnet_cidr" {
  type        = string
  description = "Subnet CIDR."
  default     = "10.40.1.0/24"
}

variable "vm_size" {
  type        = string
  description = "VM size SKU."
  default     = "Standard_B1s"
}

variable "admin_username" {
  type        = string
  description = "Admin username for SSH login."
  default     = "azureuser"
}
