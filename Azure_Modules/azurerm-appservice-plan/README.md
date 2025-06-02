## terraform-azurerm-app-service-plan

### Deploy a Scalable Azure App Service Plan

This Terraform module provides a streamlined, customizable way to deploy an Azure App Service Plan, which hosts your web applications, REST APIs, and mobile backends. The module abstracts resource configuration complexities, allowing you to quickly launch scalable and resilient App Service infrastructure tailored to your workloads.

### Features:
- **Flexible Tier Options**: Easily choose from Free, Shared, Basic, Standard, Premium, or Isolated SKUs to match performance and pricing needs.
- **Custom Scaling**: Configure instance count and size for better scalability and performance optimization.
- **Linux and Windows Support**: Create App Service Plans for Linux or Windows-based workloads.
- **Tag Management**: Apply consistent resource tagging for easier organization, cost management, and governance.
- **Infrastructure as Code (IaC)**: Define your entire App Service infrastructure declaratively, enabling repeatability, versioning, and collaboration.

### Example Usage 
```hcl
module "app_service_plan" {
  source               = "path/to/app-service-plan-module"
  
  rg_name              = "my-resource-group"
  location             = "eastus"
  plan_name            = "my-app-service-plan"
  sku_tier             = "PremiumV2"
  sku_size             = "P1v2"
  os_type              = "Linux" # Use "Windows" for Windows-based plans
  
  app_service_plan_tags = {
    "Environment" = "Production"
    "Owner"       = "TeamA"
  }
}
