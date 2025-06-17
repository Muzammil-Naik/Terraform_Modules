## terraform-azurerm-linux-function-app

### Deploy a Python-Based Azure Linux Function App

This Terraform module provisions an **Azure Linux Function App** with Python runtime, designed to integrate with existing infrastructure such as a pre-created App Service Plan and Storage Account. It enables developers to quickly deploy event-driven applications with scalability, observability, and flexibility.

---

### Features:
- **Runtime Flexibility**: Easily choose your Python version via a variable (`3.9`, `3.10`, etc.).
- **Plug into Existing Infra**: Reference an already deployed App Service Plan and Storage Account.
- **Output Metadata**: Get key info such as Function App name, region, and resource group from Terraform outputs.
- **IaC Best Practices**: Keep your deployment declarative and consistent across environments.
- **HTTPS Only by Default**: Security best practices enforced out-of-the-box.

---

### Example Usage
```hcl
module "function_app" {
  source = "github.com/Muzammil-Naik/Terraform_Modules//Azure_Modules/azurerm-linux-function-app"

  function_app_name             = "my-python-func"
  function_app_resource_group   = "my-resource-group"
  function_app_location         = "eastus"
  function_app_service_plan_id  = "/subscriptions/xxxx/resourceGroups/my-resource-group/providers/Microsoft.Web/serverfarms/my-app-service-plan"
  storage_account_name          = "mystorageacct"
  storage_account_access_key    = "your-access-key"
  python_version                = "3.10"
}
