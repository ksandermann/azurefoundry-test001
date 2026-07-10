locals {
  configfiles_directory = format("%s%s", path.module, "/configfiles")
}

module "composer" {
  source = "../modules/azure_public_vm"

  //mandatory
  resource_group_name = "rg_hello_world"
  location            = "eastus"

  virtual_network_name = "vnet_hello_world"
  virtual_network_cidr = "10.20.0.0/16"
  subnet_name          = "subnet_public"
  subnet_cidr          = "10.20.1.0/24"

  public_ip_name              = "pip_hello_world"
  network_security_group_name = "nsg_hello_world"
  network_interface_name      = "nic_hello_world"

  virtual_machine_name = "vm_hello_world"
  virtual_machine_size = "Standard_B2s"
  admin_username       = "azureuser"
  admin_ssh_public_key = file("./configfiles/id_rsa.pub")
  os_disk_name         = "osdisk_hello_world"
  custom_data          = file(format("%s%s", local.configfiles_directory, "/cloud-init.sh"))

  //optional
  tags = {
    deployed_by = "terraform"
    stage       = "dev"
  }
}
