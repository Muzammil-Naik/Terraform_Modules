output "Resource_Group_Name" { 
  description = "It is the Name of Newly created Resource Group" 
  value = azurerm_resource_group.rg.name 
} 

output "Resource_Group_Location" { 
  description = "It is the Region/Location where the Resource Group is Created" 
  value = azurerm_resource_group.rg.location 
} 

output "Resource_Group_Tags" { 
  description = "These are the Tags, it is optional" 
  value = azurerm_resource_group.rg.tags 
} 