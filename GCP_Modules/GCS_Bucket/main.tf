resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.bucket_location
  storage_class = var.bucket_storage_class
  labels        = var.bucket_labels
}