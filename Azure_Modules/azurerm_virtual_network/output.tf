output "Virtual_Network_Name" { 
  description = "The Name of the Virtual Network" 
  value = azurerm_virtual_network.vnet.name 
} 

output "RG_Name_Vnet" { 
  description = "The Name of the Resource Group where the Virtual Network is deployed" 
  value = var.RG_Name_Vnet 
} 

output "Region_Vnet" { 
  description = "The Region/Location where the Virtual Network is deployed" 
  value = var.Region_Vnet 
} 

output "Vnet_Address_space" { 
  description = "The Address Space of the Virtual Network" 
  value = var.Vnet_Address_space 
} 

output "Vnet_tags" { 
  description = "Tags of the Virtual Network" 
  value = var.Vnet_tags 
} 

output "Vnet_lifecycle_PreventDestroy" { 
  description = "The is the Security Feature which prevents the accidental deletion of Network" 
  value = var.Vnet_lifecycle_PreventDestroy 
} 

output "Snet_Name_address_prefix" { 
  description = "These are the Names and respective address prefix of the Subnets" 
  value = var.Snet_Name_address_prefix 
} 