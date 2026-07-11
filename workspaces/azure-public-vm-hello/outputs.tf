output "resource_group" {
  value = module.public-vm.resource_group
}

output "public_ip" {
  value = module.public-vm.public_ip
}

output "virtual_machine" {
  value = module.public-vm.virtual_machine
}
