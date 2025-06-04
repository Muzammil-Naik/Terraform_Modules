## terraform-azurerm-virtual-machine-windows

### Create a basic Windows Virtual Machine & Resource Group
This Terraform module provides a flexible and reusable solution for deploying Resource Group & Windows Virtual Machines (VMs) on Azure cloud provider. It abstracts the complexities of VM creation, networking, and configuration, allowing you to quickly spin up Windows-based Virtual Machine with minimal configuration effort.

### Features:
- **Easy Customization**: Quickly deploy Windows VMs tailored to your application's requirements. Configure VM size, networking, and more through simple input variables.
- **Security Considerations**: Implement security best practices effortlessly by enabling features such as managed disk encryption, network security groups.
- **Tagging and Categorization**: Easily apply tags and labels to the VM resources for better organization, cost allocation, and management.
- **Remote Desktop Access**: Enable Remote Desktop Protocol (RDP) access to Windows VMs, allowing remote administration and troubleshooting.
- **Module Reusability**: Designed with modularity in mind, you can reuse this module across various projects, reducing duplication and maintaining a consistent deployment approach.
- **Infrastructure as Code**: Leverage the power of Infrastructure as Code (IaC) principles by describing your VM infrastructure in code. This ensures version control, collaboration, and reproducibility.


### Example Usage 
```hcl
module "windows_vm" {
    source                = "github.com/Muzammil-Naik/Terraform_Modules//Azure_Modules/azurerm_virtual_mahine_Windows"
    rg_name               = "Example-Rg" 
    rg_location           = "eastus" 
    rg_tags               = {   
                                "Key1" = "Value1" 
                                "Key2" = "VAlue2" 
                            } 
    vnet_name             = "example_vnet" 
    vnet_address_space    = ["10.0.0.0/16"]
    vnet_tags             = {   
                                "Key1" = "Value1" 
                                "Key2" = "VAlue2" 
                            }  
    snet_address_prefixes = ["10.0.1.0/24"] 
    snet_name             = "example_vnet_snet" 
    nsg_name              = "Example_NSG" 
    nsg_tags               = {   
                                "Key1" = "Value1" 
                                "Key2" = "VAlue2" 
                            } 
    Port_numbers          = ["80", "443", "3389"] 
    pip                   = "example_pip"
    pip_tags               = {   
                                "Key1" = "Value1" 
                                "Key2" = "VAlue2" 
                            }  
    NIC_name              = "Example_NIC"
    pip_tags              = {   
                                "Key1" = "Value1" 
                                "Key2" = "VAlue2" 
                            } 
    vm_name               = "example-vm" 
    vm_size               = "Standard_DS1_v2" 
    vm_admin_username     = "example" 
    vm_admin_password     = "example123" 
    vm_tags               = {   
                                "Key1" = "Value1" 
                                "Key2" = "VAlue2" 
                            } 
    
    #All tags are optional
}
```
