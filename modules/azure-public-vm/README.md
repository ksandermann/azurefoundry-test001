# azure-public-vm module

Reusable Terraform module that provisions a public-facing Linux VM on Azure with:

- resource group
- virtual network and subnet
- network security group with SSH (22) and HTTP (80)
- static public IP
- network interface
- Linux VM
