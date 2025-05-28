resource "azurerm_storage_account" "sa" { 
  name                     = var.Storage_Account_Name 
  resource_group_name      = var.Storage_Account_RG_Name 
  account_replication_type = var.Storage_Account_Replication_Type 
  location                 = var.Storage_Account_Location 
  account_tier             = var.Storage_Account_Tier 
  tags                     = var.Storage_Account_Tags 
  access_tier              = var.Storage_Account_AccessTier 
} 