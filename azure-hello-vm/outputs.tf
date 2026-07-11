output "resource_group_name" {
  value = module.azure_public_vm.resource_group_name
}

output "virtual_machine_name" {
  value = module.azure_public_vm.virtual_machine_name
}

output "public_ip_address" {
  value = module.azure_public_vm.public_ip_address
}

output "ssh_command" {
  value = module.azure_public_vm.ssh_command
}

output "hello_world_url" {
  value = module.azure_public_vm.hello_world_url
}
