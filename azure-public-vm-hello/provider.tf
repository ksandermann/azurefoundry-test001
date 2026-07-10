terraform {
  required_version = ">= 1.3.0"
}

provider "azurerm" {
  environment     = "Public"
  tenant_id       = "00000000-0000-0000-0000-000000000000"
  subscription_id = "00000000-0000-0000-0000-000000000000"

  features {}
}
