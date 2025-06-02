resource "azurerm_app_service_plan" "asp" {
  name                = var.appserviceplan_name
  location            = var.appserviceplan_location
  resource_group_name = var.resource-group-name_appserviceplan
  sku {
    size = var.sku_size
    tier = var.sku_tier
  }
  kind = var.os_type
  reserved = var.os_type == "Linux" ? true : false
  tags     = var.tags
}