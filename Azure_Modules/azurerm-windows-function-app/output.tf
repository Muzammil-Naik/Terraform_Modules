output "Resource_Group_Name" {
  description = "The name of the Resource Group"
  value       = azurerm_windows_function_app.funapp.resource_group_name
}
output "Function_App_Name" {
  description = "The Name of the Function App"
  value       = azurerm_windows_function_app.funapp.name
}
output "Function_App_Region" {
  description = "The Region or Location to which the function is being deployed"
  value       = azurerm_windows_function_app.funapp.location
}
output "Storage_Account_Name" {
  description = "The Name of the Storage account to which the Function app is linked"
  value       = azurerm_windows_function_app.funapp.storage_account_name
}
output "DOTNET_version" {
  description = "The .NET Version"
  value       = var.DOTNET_version
}
