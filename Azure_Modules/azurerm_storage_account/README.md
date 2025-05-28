## Terraform-azurerm-storage-account module 

### Overview 

This Terraform module facilitates the deployment of Azure Storage Account. focusing exclusivey on standard storage without any pre-defined [containers(Blob storage), File Storage, Queues, Tables] it provides a foundation for creating a scalable and durable storage infrastructure in Azure. 

## Features: 
- **Custimization**: Fine-tune settings such as replication, access tier, and other parameters based on the requirements. 
- **Infrastructure as code**: Leverage Terraform to manage and version control your Azure Resource Group configuration. 

### Example Usage: 
```hcl 
module "Resource_Group" { 
    source                              = "path/to/azurerm_resource_group_module" 
    Storage_Account_Name                = "Demo" 
    Storage_Account_RG_Name             = "Demo_RG" 
    Storage_Account_Replication_Type    = "LRS" 
    Storage_Account_Location            = "eastus" 
    Storage_Account_Tier                = "Standard" 
    Storage_Account_AccessTier          = "Hot" 
    Resource_Group_Tags                 =  {   
                                        "Key1" = "Value1" 
                                        "Key2" = "Value2" 
                                            } 
    #Resource_Group_Tags are optional  
} 
``` 
