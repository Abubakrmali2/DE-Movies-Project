variable "credential" {
  description = "My Credential to GCP"
  default     = "/home/kafka/DE-Movies-Project/Terraform/key/key.json"
}

variable "project_name" {
  description = "my project name"
  default     = "de-movielens-project"
}

variable "bq_dataset_name" {
  description = "My BigQuery dataset name"
  default     = "movies_data"
}

variable "gcs_bucket_name" {
  description = "bucket name"
  default     = "de-movielens-project-movies-data"
}

variable "gcs_storage_class" {
  description = "bucket storage class"
  default     = "STANDARD"
}