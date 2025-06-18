## terraform-azurerm-windows-function-app

### Deploy a .NET-Based Azure Windows Function App

This Terraform module provisions an **Azure Windows Function App** with a configurable .NET runtime, designed to plug into existing infrastructure like an App Service Plan and Storage Account. It helps teams deploy scalable, serverless .NET workloads quickly and securely using Infrastructure as Code.

---

### Features:
- **.NET Runtime Support**: Easily configure your .NET version (e.g., `v6.0`, `v7.0`) using a variable.
- **Integrate with Existing Infra**: Reference a pre-provisioned App Service Plan and Storage Account.
- **Secure by Default**: `https_only` is enabled to enforce encrypted traffic.
- **Reusable & Consistent**: Follows Terraform best practices for reusability and environment consistency.
- **Clean Output**: Returns key metadata such as app name, region, and resource group via outputs.

---

### Example Usage
```hcl
module "windows_function_app" {
  source = "github.com/Muzammil-Naik/Terraform_Modules//Azure_Modules/azurerm-windows-function-app"

  function_app_name             = "my-dotnet-func"
  function_app_resource_group   = "my-resource-group"
  function_app_location         = "eastus"
  function_app_service_plan_id  = "/subscriptions/xxxx/resourceGroups/my-resource-group/providers/Microsoft.Web/serverfarms/my-app-service-plan"
  storage_account_name          = "mystorageacct"
  storage_account_access_key    = "your-access-key"
  dotnet_version                = "v6.0"
}
