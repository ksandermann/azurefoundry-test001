output "resource_group" {
  value = module.public_vm.resource_group
}

output "public_ip" {
  value = module.public_vm.public_ip
}

output "virtual_machine" {
  value = module.public_vm.virtual_machine
}
