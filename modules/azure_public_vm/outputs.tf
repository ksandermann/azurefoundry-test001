output "resource_group_name" {
  description = "Resource group name for the deployment."
  value       = azurerm_resource_group.this.name
}

output "public_ip_address" {
  description = "Public IP address assigned to the VM."
  value       = azurerm_public_ip.this.ip_address
}

output "vm_id" {
  description = "Resource ID of the Linux virtual machine."
  value       = azurerm_linux_virtual_machine.this.id
}

output "vm_name" {
  description = "Name of the Linux virtual machine."
  value       = azurerm_linux_virtual_machine.this.name
}
