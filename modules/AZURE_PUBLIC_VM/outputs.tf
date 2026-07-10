output "VM_ID" {
  description = "ID of the Linux virtual machine."
  value       = azurerm_linux_virtual_machine.VM.id
}

output "VM_NAME" {
  description = "Name of the Linux virtual machine."
  value       = azurerm_linux_virtual_machine.VM.name
}

output "PUBLIC_IP_ADDRESS" {
  description = "Public IP address assigned to the virtual machine."
  value       = azurerm_public_ip.PIP.ip_address
}

output "RESOURCE_IDS" {
  description = "Resource IDs produced by the module."
  value = {
    VNET = azurerm_virtual_network.VNET.id
    NSG  = azurerm_network_security_group.NSG.id
    NIC  = azurerm_network_interface.NIC.id
  }
}
