output "bucket_name" {
  description = "The name of the storage bucket"
  value       = google_storage_bucket.bucket.name
}
output "bucket_location" {
  description = "The region or location of the storage bucket"
  value       = google_storage_bucket.bucket.location
}
output "bucket_storage_class" {
  description = "The storage class which is being used on the GCP bucket"
  value       = google_storage_bucket.bucket.storage_class
}
output "labels" {
  description = "The labels which were added to the bucket"
  value       = var.bucket_labels
}