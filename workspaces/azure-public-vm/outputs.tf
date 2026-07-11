output "resource_group" {
  value = module.azure-public-vm.resource_group
}

output "virtual_machine" {
  value = module.azure-public-vm.virtual_machine
}

output "public_ip_address" {
  value = module.azure-public-vm.public_ip_address
}
