resource "azurerm_resource_group" "rg" { 
  name = var.Resource_Group_Name 
  location = var.Resource_Group_Location 
  tags = var.Resource_Group_Tags 
} 