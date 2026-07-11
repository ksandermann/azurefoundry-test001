terraform {
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  environment     = "public"
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  features {}
}
