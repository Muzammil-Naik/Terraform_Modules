variable "project_id" {
  description = "Project ID of the resource in which you want to deploy"
  type        = string
}

variable "bucket_name" {
  description = "The name of the bucket, it should be globally unique"
  type        = string
}

variable "bucket_location" {
  description = "The location or region of the bucket in which you want to deploy"
  type        = string
}

variable "bucket_storage_class" {
  description = "The storage class of the bucket, ex:STANDARD"
  type        = string
}

variable "bucket_labels" {
  description = "Labels or the tags that you want to add to your bucket it is optional"
  type        = map(string)
  default     = null
}