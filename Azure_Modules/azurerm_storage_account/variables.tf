variable "Storage_Account_Name" { 
  description = "This is the name of the Storage Account and it should be globally unique" 
  type        = string 
} 

variable "Storage_Account_RG_Name" { 
  description = "Name of the Parent Resource Group in which you are deploying Storage Account" 
  type        = string 
} 

variable "Storage_Account_Replication_Type" { 
  description = "Storage Account Replication Type, (Redundancy) valid options are LRS, ZRS, GRS or GZRS, Default is LRS" 
  type        = string 
  default     = "LRS" 
} 

variable "Storage_Account_Location" { 
  description = "It is the Storage Account Location or Region" 
  type        = string 
} 

variable "Storage_Account_Tier" { 
  description = "It is the Account tier of the Storage Account (Performance) valid options are Standard or Premium" 
  type        = string 
} 

variable "Storage_Account_Tags" { 
  description = "It is for the tags which you can add to the Storage Account and it is optional" 
  default     = null 
  type        = map(any) 
} 

variable "Storage_Account_AccessTier" { 
  description = "This is the Default Access Tier for Whole Storage Account and it is inferred by the Blobs present in the storage account however it can be explictly changed. (valid options: Hot or Cool by Default its Hot)" 
  type        = string 
  default     = "Hot" 
} 