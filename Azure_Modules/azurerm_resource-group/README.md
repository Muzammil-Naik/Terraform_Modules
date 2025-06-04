## Terraform-azurerm-resource-group 

### Deploy a Resource Group in Azure  
This Terraform module facilitates the deployment of Azure Resource Group with pre-defined configurations. it streamlines the process of creating a consistent infrastructure foundation for your projects or resources in Azure. 

## Features: 
- **Scalability**: Easily Adjust the resources according to your project's requirements. 
- **Custimization**: Fine-tune settings to align with specific project needs. 
- **Infrastructure as code**: Leverage Terraform to manage and version control your Azure Resource Group configuration. 

### Example Usage: 
```hcl 
module "Resource_Group" { 
    source                      = "github.com/Muzammil-Naik/Terraform_Modules//Azure_Modules/azurerm_resource-group" 
    Resource_Group_Name         = "Example" 
    Resource_Group_Location     =  "centralindia" 
    Resource_Group_Tags         =  {   
                                        "Key1" = "Value1" 
                                        "Key2" = "VAlue2" 
                                    } 
    #Resource_Group_Tags are optional  
} 
``` 

 