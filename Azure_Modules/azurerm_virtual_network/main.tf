resource "azurerm_virtual_network" "vnet" { 
  name                = var.Virtual_Network_Name 
  resource_group_name = var.RG_Name_Vnet 
  location            = var.Region_Vnet 
  address_space       = var.Vnet_Address_space 
  tags                = var.Vnet_tags 
  dynamic "subnet" { 
    for_each = var.Snet_Name_address_prefix 
    iterator = each 
    content { 
      name = each.key 
      address_prefix = each.value 
    } 
  } 
  lifecycle { 
    prevent_destroy       = false 
    create_before_destroy = true 
  } 
} 