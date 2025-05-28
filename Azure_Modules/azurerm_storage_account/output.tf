output "Storage_Account_Name" { 
  description = "The Name of the Newly created Storage_Account" 
  value       = azurerm_storage_account.sa.name 
} 

output "Storage_Account_RG_Name" { 
  description = "The name of the parent Resource Group" 
  value       = azurerm_storage_account.sa.resource_group_name 
} 

output "Storage_Account_Region_or_Location" { 
  description = "Name of the Location or Region where you have created the Storage Account" 
  value       = azurerm_storage_account.sa.location 
} 

output "Storage_Account_Replication_Type" { 
  description = "It gives Redundancy (LRS, ZRS, GRS, GZRS)" 
  value       = azurerm_storage_account.sa.account_replication_type 
} 

output "Storage_Account_Tier" { 
  description = "it gives the Storage Account Performance Tier (Standard or Premium)" 
  value       = azurerm_storage_account.sa.access_tier 
} 

output "Storage_Account_AccessTier" { 
  description = "Storage Account Access Tier either Hot or Cool" 
  value       = azurerm_storage_account.sa.access_tier 
} 

output "Storage_Account_Tags" { 
  description = "It will give the Tags if you have added any" 
  value       = azurerm_storage_account.sa.tags 
} 