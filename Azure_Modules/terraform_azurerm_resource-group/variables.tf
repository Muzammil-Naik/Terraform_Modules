variable "Resource_Group_Name" { 
  description = "Resource Group Name" 
  type = string 
} 

variable "Resource_Group_Location" { 
  description = "Resource Group Location" 
  type = string 
} 

variable "Resource_Group_Tags" { 
  description = "Resource Group Tags (Optional)" 
  type = map(string) 
  default = null 
} 