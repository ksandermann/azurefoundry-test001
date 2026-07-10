variable "RESOURCE_GROUP_NAME" {
  type        = string
  description = "Name of the Azure resource group."
}

variable "LOCATION" {
  type        = string
  description = "Azure location for deployment."
  default     = "eastus"
}

variable "NAME_PREFIX" {
  type        = string
  description = "Global deterministic name prefix."
  default     = "HELLOWORLD"
}

variable "ADMIN_USERNAME" {
  type        = string
  description = "Admin username for SSH access."
  default     = "azureuser"
}

variable "SSH_PUBLIC_KEY" {
  type        = string
  description = "Public SSH key value."
  sensitive   = true
}

variable "VM_SIZE" {
  type        = string
  description = "Virtual machine size."
  default     = "Standard_B1s"
}

variable "TAGS" {
  type        = map(string)
  description = "Tags applied to resources."
  default = {
    ENVIRONMENT = "DEMO"
    WORKSPACE   = "HELLO_WORLD"
    MANAGED_BY  = "TERRAFORM"
  }
}
