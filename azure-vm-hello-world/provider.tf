terraform {
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  version = "~>3.0"

  environment     = "Public"
  tenant_id       = "supersecret"
  subscription_id = "supersecret"

  features {}
}
