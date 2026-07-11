module "azure_vm" {
  source = "../modules/azure-linux-vm-public"

  //mandatory
  //generic
  location            = "eastus"
  resource_group_name = "rg-vm-hello-001"

  //network
  virtual_network_name          = "vnet-vm-hello-001"
  virtual_network_address_space = "10.10.0.0/16"
  subnet_name                   = "snet-vm-hello-001"
  subnet_address_prefix         = "10.10.1.0/24"
  network_security_group_name   = "nsg-vm-hello-001"
  public_ip_name                = "pip-vm-hello-001"
  network_interface_name        = "nic-vm-hello-001"

  //security
  inbound_rules = {
    ssh001 = {
      priority  = 100
      direction = "Inbound"
      access    = "Allow"
      protocol  = "Tcp"
      port      = 22
    },
    http001 = {
      priority  = 110
      direction = "Inbound"
      access    = "Allow"
      protocol  = "Tcp"
      port      = 80
    }
  }

  //virtual machine
  virtual_machine_name = "vm-hello-001"
  virtual_machine_size = "Standard_B1s"
  admin_username       = "azureuser"
  admin_ssh_public_key = "ssh-rsa SUPERSECRET"
  custom_data_b64      = base64encode(file("./configfiles/cloud-init.yaml"))
}
