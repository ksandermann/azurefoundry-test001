output "resource_group_name" {
  value = module.azure_vm.resource_group_name
}

output "virtual_machine_name" {
  value = module.azure_vm.virtual_machine_name
}

output "public_ip_address" {
  value = module.azure_vm.public_ip_address
}
