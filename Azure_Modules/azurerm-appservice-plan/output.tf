output "appserviceplan-name" {
  description = "The name of the App service plan"
  value       = azurerm_app_service_plan.asp.name
}

output "appserviceplan-rg-name" {
  description = "The name of the Resource Group to which the App service plan is deployed."
  value       = azurerm_app_service_plan.asp.resource_group_name
}

output "appserviceplan-location" {
  description = "The region to which the App service plan is deployed"
  value       = azurerm_app_service_plan.asp.location
}

output "appserviceplan-sku-size" {
  description = "The SKU Size"
  value       = azurerm_app_service_plan.asp.sku[0].size
}

output "appserviceplan-tier" {
  description = "The SKU Tier"
  value       = azurerm_app_service_plan.asp.sku[0].tier
}

output "appserviceplan-OS" {
  description = "The OS to which the App service plan is reserved for."
  value       = azurerm_app_service_plan.asp.reserved
}

output "tags" {
  description = "The tags which are added to the App service plan"
  value       = azurerm_app_service_plan.asp.tags
}