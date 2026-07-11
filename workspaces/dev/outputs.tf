output "resource_group_name" {
  description = "Resource group containing the hello-world VM deployment."
  value       = module.hello_world_vm.resource_group_name
}

output "public_ip_address" {
  description = "Public IP address for the deployed VM."
  value       = module.hello_world_vm.public_ip_address
}

output "vm_name" {
  description = "Name of the deployed VM."
  value       = module.hello_world_vm.vm_name
}
