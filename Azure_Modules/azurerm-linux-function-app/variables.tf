variable "function_app_resource_group" {
  description = "Name of the resource group"
  type        = string
}

variable "function_app_name" {
  description = "Function App Name"
  type        = string
}

variable "function_app_location" {
  description = "Location or Region"
  type        = string
}

variable "function_app_service_plan_id" {
  description = "Service plan ID"
  type        = string
}
variable "storage_account_name" {
  description = "The name of the existing storage account for the Function App"
  type        = string
}

variable "storage_account_access_key" {
  description = "The access key for the existing storage account"
  type        = string
  sensitive   = true
}

variable "python_version" {
  description = "The version of Python runtime to use for the Function App"
  type        = string
  default     = "3.12"  # You can change this default if needed
}
