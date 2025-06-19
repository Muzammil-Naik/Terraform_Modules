# Azure Terraform Modules

This directory contains **Azure-specific** Terraform modules that help streamline and standardize infrastructure deployment in Microsoft Azure.

## 📦 Available Modules

The following reusable modules are included in this directory:

- **`vm`** – Deploy Azure Virtual Machines with configurable OS, size, networking, and disks.
- **`vnet`** – Create and manage Azure Virtual Networks, subnets, and related settings.
- **`resource_group`** – Provision Azure Resource Groups with optional tags and location.
- **`storage_account`** *(optional)* – Set up Azure Storage Accounts with access control and redundancy options.
- **`nsg`** *(optional)* – Define Network Security Groups with custom inbound/outbound rules.
- **`app_service_plan`** – Create scalable and flexible Azure App Service Plans for hosting web apps and function apps.
- **`linux_function_app`** – Deploy event-driven Azure Linux Function Apps with Python runtime, integrated with existing app service plans and storage accounts.

> Each module is self-contained with its own `main.tf`, `variables.tf`, `outputs.tf`, and `README.md`.

## 🧩 How to Use

Each module can be included in your root Terraform configuration using a source path like:

```hcl
module "example_module" {
  source = "github.com/Muzammil-Naik/Terraform_Modules//Azure_Modules/<module_name>"
  # ...module-specific variables...
}
