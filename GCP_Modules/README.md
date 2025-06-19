# GCP Terraform Modules

This directory contains **Google Cloud Platform (GCP)** Terraform modules designed to standardize and simplify infrastructure provisioning across GCP projects.

## 📦 Available Modules

The following reusable GCP module is currently included in this directory:

- **`gcs_bucket`** – Provision Google Cloud Storage buckets with support for configurable:
  - Bucket name, location, and storage class
  - Labels

> This module includes its own `main.tf`, `variables.tf`, `outputs.tf`, and `README.md`.

## 🧩 How to Use

You can include this module in your root Terraform configuration using the following format:

```hcl
module "gcs_bucket" {
  source              = "github.com/Muzammil-Naik/terraform-modules//GCP_Modules/<module_name>"
  
  # ...module-specific variables...
}
