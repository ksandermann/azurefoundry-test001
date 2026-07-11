output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "virtual_machine_name" {
  value = azurerm_linux_virtual_machine.this.name
}

output "public_ip_address" {
  value = azurerm_public_ip.this.ip_address
}

output "ssh_command" {
  value = "ssh ${var.admin_username}@${azurerm_public_ip.this.ip_address}"
}

output "hello_world_url" {
  value = "http://${azurerm_public_ip.this.ip_address}"
}
