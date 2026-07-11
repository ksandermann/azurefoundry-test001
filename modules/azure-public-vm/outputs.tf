output "resource_group" {
  value = azurerm_resource_group.this
}

output "virtual_machine" {
  value = azurerm_linux_virtual_machine.this
}

output "public_ip_address" {
  value = azurerm_public_ip.this.ip_address
}
