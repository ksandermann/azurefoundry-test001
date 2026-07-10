output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "virtual_machine_name" {
  value = azurerm_linux_virtual_machine.this.name
}

output "public_ip_address" {
  value = azurerm_public_ip.this.ip_address
}
