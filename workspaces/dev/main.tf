module "hello_world_vm" {
  source = "../../modules/azure_public_vm"

  name_prefix          = var.name_prefix
  location             = var.location
  admin_username       = var.admin_username
  admin_ssh_public_key = var.admin_ssh_public_key
  vm_size              = var.vm_size
  tags                 = var.tags
}
