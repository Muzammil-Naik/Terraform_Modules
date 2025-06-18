variable "resource_group_name" {
  description = "Resource Group name to which the function app is being deployed"
  type        = string
}

variable "function_app_name" {
  description = "The name of the Function app"
  type        = string
}

variable "function_app_region" {
  description = "Name of the region to which the function app needs to be deployed"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account to which the function app is linked"
  type        = string
}

variable "storage_account_access_key" {
  description = "The Access key of the storage account"
  type        = string
  sensitive   = true
}

variable "service_plan_id" {
  description = "The ID of App Service plan to which the function app is being deployed"
  type        = string
}

variable "DOTNET_version" {
  description = "The version of the .Net Application Stack (Ex: v6.0)"
  type        = string
}