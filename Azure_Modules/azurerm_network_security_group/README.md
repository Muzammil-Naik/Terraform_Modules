# terraform-azurerm-network-security-group

Deploy a basic Network Security Group (NSG) on Azure.

This Terraform module offers a simple solution for provisioning a Network Security Group (NSG) on Azure cloud provider. It simplifies the process of creating an NSG without the need to define custom inbound and outbound rules, providing a foundational layer for network security.

## Features

- **Basic NSG Creation**: Quickly deploy a Network Security Group without the need to define custom inbound and outbound rules.
- **Tagging and Categorization**: Apply tags and labels to NSG resources for better organization, cost allocation, and management.
- **Integration with Other Resources**: Seamlessly integrate NSGs with other Azure resources such as Virtual Machines, Subnets, etc., to enforce network security policies.
- **Infrastructure as Code (IaC)**: Describe your basic network security policies in code using Infrastructure as Code (IaC) principles, ensuring version control, collaboration, and reproducibility.

## Example Usage

```hcl
module "network_security_group" {
    source               = "path/to/windows-vm-module"
    resource_group_name  = "my_resource_group"
    nsg_name             = "my_nsg"
    nsg_location             = "eastus"
    nsg_tags             = {
                              "Environment" = "Production"
                              "Team"        = "DevOps"
                          }
}
```
