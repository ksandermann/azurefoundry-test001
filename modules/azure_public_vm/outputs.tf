output "resource_group_name" {
  description = "Name of the created resource group."
  value       = azurerm_resource_group.this.name
}

output "public_ip_address" {
  description = "Public IP address assigned to the virtual machine."
  value       = azurerm_public_ip.this.ip_address
}

output "vm_name" {
  description = "Name of the virtual machine."
  value       = azurerm_linux_virtual_machine.this.name
}
