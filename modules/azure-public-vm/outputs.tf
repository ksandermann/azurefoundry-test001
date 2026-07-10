output "resource_group" {
  value = azurerm_resource_group.this
}

output "virtual_machine" {
  value = azurerm_linux_virtual_machine.this
}

output "public_ip" {
  value = azurerm_public_ip.this
}

output "network_interface" {
  value = azurerm_network_interface.this
}
