# Azure Terraform Modules

This directory contains **Azure-specific** Terraform modules that help streamline and standardize infrastructure deployment in Microsoft Azure.

## 📦 Available Modules

The following reusable modules are included in this directory:

- **`vm`** – Deploy Azure Virtual Machines with configurable OS, size, networking, and disks.
- **`vnet`** – Create and manage Azure Virtual Networks, subnets, and related settings.
- **`resource_group`** – Provision Azure Resource Groups with optional tags and location.
- **`storage_account`** *(optional)* – Set up Azure Storage Accounts with access control and redundancy options.
- **`nsg`** *(optional)* – Define Network Security Groups with custom inbound/outbound rules.

> Each module is self-contained with its own `main.tf`, `variables.tf`, `outputs.tf`, and `README.md`.

## 🧩 Usage Example

Here’s how you might use the `vm` and `vnet` modules together in a Terraform configuration:

```hcl
module "resource_group" {
  source     = "../azure/resource_group"
  name       = "my-rg"
  location   = "East US"
}

module "vnet" {
  source         = "../azure/vnet"
  name           = "my-vnet"
  address_space  = ["10.0.0.0/16"]
  location       = module.resource_group.location
  resource_group = module.resource_group.name
}

module "vm" {
  source            = "../azure/vm"
  vm_name           = "web-server"
  location          = module.resource_group.location
  resource_group    = module.resource_group.name
  subnet_id         = module.vnet.subnet_id
  admin_username    = "azureuser"
  admin_password    = "SuperSecurePassword123!"
}
