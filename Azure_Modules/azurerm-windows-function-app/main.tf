resource "azurerm_windows_function_app" "funapp" {
  resource_group_name        = var.resource_group_name
  name                       = var.function_app_name
  location                   = var.function_app_region
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  service_plan_id            = var.service_plan_id
  site_config {
    application_stack {
      dotnet_version = var.DOTNET_version
    }
  }
  https_only = true
}