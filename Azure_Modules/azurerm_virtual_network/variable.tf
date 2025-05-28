variable "Virtual_Network_Name" { 
  description = "The name of Virtual Network that you want to give" 
  type        = string 
} 

variable "RG_Name_Vnet" { 
  description = "The name of the Resource Group in which the Virtual network is getting deployed" 
  type        = string 
} 

variable "Region_Vnet" { 
  description = "The Region or the location of Virtual network" 
  type        = string 
} 

variable "Vnet_Address_space" { 
  description = "The Address Space of the Vnet" 
  type        = list(string) 
} 

variable "Vnet_tags" { 
  description = "These are the Virtual Network Tags and it is optional" 
  type        = map(any) 
  default     = null 
} 

variable "Vnet_lifecycle_PreventDestroy" { 
  description = "This is a security feature which prevents the deletion of the network, Possible values are true/false (by default false)" 
  type        = bool 
  default     = false 
} 

variable "Snet_Name_address_prefix" { 
  description = "The name and address prefix of the Subnet" 
  type        = map(any) 
} 