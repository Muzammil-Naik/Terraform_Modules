resource "azurerm_resource_group" "rg" { 
  for_each = var.Resource_Group_Values 
  name = each.key 
  location = each.value 
  tags = var.Resource_Group_Tags 
} 

locals { 
  rgnames=[for key in azurerm_resource_group.rg:key.name] 
  rglocations=[for key in azurerm_resource_group.rg:key.location] 
} 