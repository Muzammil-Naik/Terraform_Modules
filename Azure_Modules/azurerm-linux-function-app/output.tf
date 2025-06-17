output "function-app-name" {
  description = "The name of the Function App"
  value       = azurerm_linux_function_app.funapp.name
}

output "resource-group-name" {
  description = "Resource Group name to which the function is deployed"
  value       = azurerm_linux_function_app.funapp.resource_group_name
}

output "function-app-location" {
  description = "The region or location of the function app"
  value       = azurerm_linux_function_app.funapp.location
}

output "service_plan_id" {
  description = "app serice plan ID"
  value       = azurerm_linux_function_app.funapp.service_plan_id
}

output "storage_account_name" {
  description = "The name of the storage account to which the function app is connected"
  value = azurerm_linux_function_app.funapp.storage_account_name
}

output "python_version" {
  description = "The version of the runtime stack (Python)"
  value = var.python_version
}
