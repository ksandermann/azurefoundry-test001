module "public_vm" {
  source = "github.com/ksandermann/azurefoundry-test001//modules/azure-public-vm?ref=main"

  //mandatory
  //generic
  location            = var.location
  resource_group_name = var.resource_group_name

  //network
  vnet_name                    = var.vnet_name
  vnet_address_space           = var.vnet_address_space
  subnet_name                  = var.subnet_name
  subnet_address_prefix        = var.subnet_address_prefix
  public_ip_name               = var.public_ip_name
  network_security_group_name  = var.network_security_group_name
  network_interface_name       = var.network_interface_name

  //virtual_machine
  virtual_machine_name           = var.virtual_machine_name
  virtual_machine_size           = var.virtual_machine_size
  virtual_machine_admin_username = var.virtual_machine_admin_username
  virtual_machine_admin_ssh_key  = var.virtual_machine_admin_ssh_key
}
