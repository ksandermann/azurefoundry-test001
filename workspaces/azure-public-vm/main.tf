module "azure_public_vm" {
  source = "../../modules/azure-public-vm"

  //mandatory
  //generic
  location            = var.location
  resource_group_name = var.resource_group_name

  //network
  virtual_network_name          = var.virtual_network_name
  virtual_network_address_space = var.virtual_network_address_space
  subnet_name                   = var.subnet_name
  subnet_address_prefix         = var.subnet_address_prefix
  network_security_group_name   = var.network_security_group_name
  public_ip_name                = var.public_ip_name
  network_interface_name        = var.network_interface_name

  //virtual-machine
  virtual_machine_name = var.virtual_machine_name
  virtual_machine_size = var.virtual_machine_size
  admin_username       = var.admin_username
  admin_ssh_key        = var.admin_ssh_key
}
