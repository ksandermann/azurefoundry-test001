resource "azurerm_resource_group" "RG" {
  name     = var.RESOURCE_GROUP_NAME
  location = var.LOCATION
  tags     = var.TAGS
}

module "PUBLIC_VM" {
  source = "../../modules/AZURE_PUBLIC_VM"

  RESOURCE_GROUP_NAME = azurerm_resource_group.RG.name
  LOCATION            = azurerm_resource_group.RG.location
  NAME_PREFIX         = var.NAME_PREFIX
  ADMIN_USERNAME      = var.ADMIN_USERNAME
  SSH_PUBLIC_KEY      = var.SSH_PUBLIC_KEY
  VM_SIZE             = var.VM_SIZE
  TAGS                = var.TAGS
}
