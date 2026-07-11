module "azure_public_vm" {
  source = "github.com/ksandermann/azurefoundry-test001//modules/azure-public-vm?ref=main"

  //mandatory
  name_prefix          = var.name_prefix
  location             = var.location
  admin_username       = var.admin_username
  admin_ssh_public_key = file("./configfiles/admin_ssh_key.pub")

  //network
  vnet_cidr   = var.vnet_cidr
  subnet_cidr = var.subnet_cidr

  //vm
  vm_size     = var.vm_size
  custom_data = base64encode(file("./configfiles/cloud-init.yaml"))
}
