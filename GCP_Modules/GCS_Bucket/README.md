# GCS Bucket Terraform Module

This Terraform module creates a **Google Cloud Storage (GCS) bucket** in a specified GCP project with configurable location, storage class, and optional labels.

## 📦 Features

- Creates a **GCS bucket** with configurable:
  - Bucket name
  - Region / location type (regional, multi-region, dual-region)
  - Storage class (`STANDARD`, `NEARLINE`, `COLDLINE`, `ARCHIVE`)
  - Labels for environment, team, or billing
- Supports integration with other GCP modules
- Designed for reuse and automation across GCP projects

## 🧩 Usage

```hcl
module "gcs_bucket" {
  source = "github.com/Muzammil-Naik/Terraform_Modules//GCP_Modules/GCS_Bucket"  

  project_id           = "my-gcp-project-id"
  bucket_name          = "my-unique-bucket-name"
  bucket_location      = "us-east1"            # or "US", "EU", "nam4" for multi/dual
  bucket_storage_class = "STANDARD"

  bucket_labels = {
    environment = "dev"
    team        = "platform"
  }
}
