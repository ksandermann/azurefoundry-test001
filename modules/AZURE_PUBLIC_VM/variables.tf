variable "RESOURCE_GROUP_NAME" {
  type        = string
  description = "Name of the Azure resource group."
}

variable "LOCATION" {
  type        = string
  description = "Azure location for resources."
}

variable "NAME_PREFIX" {
  type        = string
  description = "Deterministic name prefix used across resources."
}

variable "ADMIN_USERNAME" {
  type        = string
  description = "Administrator username for the virtual machine."
}

variable "SSH_PUBLIC_KEY" {
  type        = string
  description = "Public SSH key for virtual machine access."
  sensitive   = true
}

variable "VM_SIZE" {
  type        = string
  description = "Azure VM size."
  default     = "Standard_B1s"
}

variable "ADDRESS_SPACE" {
  type        = list(string)
  description = "Address space for the virtual network."
  default     = ["10.10.0.0/16"]
}

variable "SUBNET_PREFIXES" {
  type        = list(string)
  description = "Address prefixes for the subnet."
  default     = ["10.10.1.0/24"]
}

variable "TAGS" {
  type        = map(string)
  description = "Tags to apply to all supported resources."
  default     = {}
}
