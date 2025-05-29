variable "rg_name" {
  description = "Resource Group Name, Enter the value in the string format"
  type        = string
}

variable "rg_location" {
  description = "Resource Group Location, Enter the valure in the string format"
  type        = string
}

variable "rg_tags" {
  description = "Resource Groups Tags (Optional)"
  type        = map(any)
  default     = null
}

variable "vnet_name" {
  description = "Virtual Network Name, Enter the value in the string format"
  type        = string
}

variable "vnet_address_space" {
  description = "Virtual Network address space, Enter the value in the list of strings format"
  type        = list(string)
}

variable "vnet_tags" {
  description = "Virtual Network Tags (Optional)"
  type        = map(any)
  default     = null
}

variable "snet_name" {
  description = "Subnet Name, Enter the value in string format"
  type        = string
}

variable "snet_address_prefixes" {
  description = "Subnet Address Prefixes, Enter the value in the list of string format"
  type        = list(string)
}

variable "nsg_name" {
  description = "Network Security Group Name, Enter the value in the String Format"
  type        = string
}

variable "Port_numbers" {
  description = "Port Values for NSG, Enter the value in the list of string format"
  type        = list(string)
}

variable "pip" {
  description = "Public IP Address Name, Enter the Value in the String format"
  type        = string
}

variable "pip_tags" {
  description = "Public IP Address Tags (Optional)"
  type        = map(any)
  default     = null
}

variable "nsg_tags" {
  description = "NSG Tags"
  type        = map(any)
  default     = null
}

variable "NIC_name" {
  description = "Network Interface Card Name, Enter the value in the string Format"
  type        = string
}

variable "NIC_Tags" {
  description = "Network Interface Card Tags"
  type        = map(any)
  default     = null
}

variable "vm_name" {
  description = "Virtual Machine Name, Enter the value in the string format"
  type        = string
}

variable "vm_size" {
  description = "Virtual Machine Size Family [ex: 'Standard_DS1_v2']"
  type        = string
}

variable "vm_admin_username" {
  description = "Virtual Machine Admin UserName, Enter the value in the string format"
  type        = string
}

variable "vm_admin_password" {
  description = "Virtual Machine Admin Password, Enter the Admin Password in the any format you like"
  type        = any
}

variable "vm_tags" {
  description = "Virtual Machine tags"
  type        = map(any)
  default     = null
}