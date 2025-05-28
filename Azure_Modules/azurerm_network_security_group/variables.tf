variable "nsg_name" {
  description = "This is the name of NSG"
  type        = string
}

variable "nsg_location" {
  description = "The Region or location where you want to deploy the Network Security Group"
  type        = string
}

variable "resource_group_name" {
  description = "Thr Resource group name where you want to keep this network security group"
  type        = any
}

variable "nsg_tags" {
  description = "Network Security Groups Tags"
  type        = map(any)
  default     = null
} 