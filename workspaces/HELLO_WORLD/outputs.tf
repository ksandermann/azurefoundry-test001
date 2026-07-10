output "RESOURCE_GROUP_NAME" {
  description = "Resource group used for deployment."
  value       = azurerm_resource_group.RG.name
}

output "VM_NAME" {
  description = "Virtual machine name."
  value       = module.PUBLIC_VM.VM_NAME
}

output "PUBLIC_IP_ADDRESS" {
  description = "Public IP address for the virtual machine."
  value       = module.PUBLIC_VM.PUBLIC_IP_ADDRESS
}
