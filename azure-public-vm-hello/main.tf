module "public_vm" {
  source = "github.com/ksandermann/azurefoundry-test001//modules/azure-public-vm?ref=feature/azure-hello-world-vm"

  //mandatory
  location                    = "eastus"
  resource_group_name         = "rg-hello-vm-001"
  vnet_name                   = "vnet-hello-001"
  vnet_cidr                   = "10.20.0.0/16"
  subnet_name                 = "subnet-hello-001"
  subnet_cidr                 = "10.20.1.0/24"
  network_security_group_name = "nsg-hello-001"
  public_ip_name              = "pip-hello-001"
  network_interface_name      = "nic-hello-001"
  vm_name                     = "vm-hello-001"
  vm_size                     = "Standard_B1s"
  vm_admin_username           = "azureuser"
  vm_admin_ssh_public_key     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB4example5qjX0xU4F2gW9S9XfHqg8xwH2mQY3Eo4jX8W0f0t4b8R6x2N5z7k1L9p3y8d6m2x1n7v5q4w3e2r1t0y9u8i7o6p5a4s3d2f1g0h9j8k7l6m5n4b3v2c1 azureuser@example"

  //optional
  custom_data_b64 = base64encode(file(format("%s%s", path.module, "/configfiles/cloud-init.yaml")))
}
