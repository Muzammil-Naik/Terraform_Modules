variable "appserviceplan_name" {
  type        = string
  description = "This is the name of the app service plan"
}

variable "appserviceplan_location" {
  type        = string
  description = "This is the location of the app service plan"
}

variable "resource-group-name_appserviceplan" {
  type        = string
  description = "This is the resource group name in which the app service plan should be deployed"
}

variable "sku_size" {
  type        = any
  description = "This is the size of the SKU"
  default     = "B1"
}

variable "sku_tier" {
  type        = any
  description = "This is the tier of the SKU"
  default     = "Basic"
}

variable "os_type" {
  description = "Operating System for the App Service Plan (Linux or Windows)"
  type        = string
  validation {
    condition     = var.os_type == "Linux" || var.os_type == "Windows"
    error_message = "os_type must be either 'Linux' or 'Windows'"
  }
}


variable "tags" {
  type        = map(any)
  description = "App Service plan tags"
  default     = null
}