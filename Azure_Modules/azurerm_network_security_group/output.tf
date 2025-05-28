output "nsg_name" {
  description = "The Name of the Network Security Group"
  value       = azurerm_network_security_group.nsg.name
}

output "nsg_location" {
  description = "The Name of the Network Security Group"
  value       = azurerm_network_security_group.nsg.location
}

output "nsg_rg" {
  description = "Resource Group Name where you want to deploy the NSG"
  value       = azurerm_network_security_group.nsg.resource_group_name
}

output "tags" {
  description = "The tags which have been added to the RG"
  value       = azurerm_network_security_group.nsg.tags
} 