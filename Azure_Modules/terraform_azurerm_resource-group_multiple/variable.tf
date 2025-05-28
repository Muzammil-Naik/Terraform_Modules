variable "Resource_Group_Values" { 
  description = "These are the Names and Regions or Location of the Resource Groups and these values should be given in the form of key value pairs (for example refer readme file)" 
  type = map(any) 
} 

variable "Resource_Group_Tags" { 
  description = "These are the Resource Group Tags, and it is optional" 
  type = map(any) 
  default = null 
} 