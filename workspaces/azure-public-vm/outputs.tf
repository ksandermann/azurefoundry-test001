output "resource_group" {
  value = module.azure_public_vm.resource_group
}

output "virtual_machine" {
  value = module.azure_public_vm.virtual_machine
}

output "public_ip_address" {
  value = module.azure_public_vm.public_ip_address
}
