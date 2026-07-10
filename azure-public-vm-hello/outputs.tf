output "resource_group" {
  value = module.public_vm.resource_group
}

output "virtual_machine" {
  value = module.public_vm.virtual_machine
}

output "public_ip" {
  value = module.public_vm.public_ip
}
