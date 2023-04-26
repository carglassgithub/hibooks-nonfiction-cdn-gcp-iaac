variable "project_id" {
  type        = string
  description = "The project id on GCP"
  default     = "default"
}

variable "bucket_name" {
  type        = string
  description = "The bucket name"
  default     = "default"
}

variable "cdn_domain" {
  type        = string
  description = "The CDN domain"
  default     = "default@example.com"
}