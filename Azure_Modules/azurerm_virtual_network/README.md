# Terraform Azure Virtual Network Module 

## Overview 
This Terraform module streamlines the creation of an Azure Virtual Network, empowering you to deploy multiple subnets. 
The module incorporates advanced lifecycle attributes to ensure safe and controlled deployments. 

## Features  
- **Azure Virtual Networks:** Sets up a virtual network in Azure. 
- **Multiple Subnets:** Allows the deployment of multiple subnets within the virtual network. 
- **Lifecycle Attributes:** Utilizes 'prevent_destroy' and 'create_before_destroy' for enhanced deployment safety. 

## Usage 
## Example 
```hcl 
module "azurerm_virtual_network" { 
    source                          = "path/to/module" 
    Virtual_Network_Name            = "demo_vnet" 
    RG_Name_Vnet                    = "demo_rg" 
    Region_Vnet                     = "eastus" 
    Vnet_Address_space              = ["10.0.0.0/16", “172.16.0.0” ] 
    Vnet_tags                       = { 
                                       key1:  "value1" 
                                       key2:  "value2" 
                                        . 
                                        . 
                                        . 
                                        } 
    Vnet_lifecycle_PreventDestroy   = false  
    Snet_Name_address_prefix        = { 
                                       subnet1: "10.0.1.0/24" 
                                       subnet2: "10.0.2.0/24" 
                                        . 
                                        . 
                                        . 
                                        } 
    #Vnet_tags are optional 
    #Vnet_lifecycle_PreventDestroy is optional                
} 
``` 