resource "azurerm_linux_function_app" "funapp" {
  name                       = var.function_app_name
  resource_group_name        = var.function_app_resource_group
  location                   = var.function_app_location
  service_plan_id            = var.function_app_service_plan_id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key

  site_config {
    application_stack {
      python_version = var.python_version
    }
  }

  https_only = true
}
