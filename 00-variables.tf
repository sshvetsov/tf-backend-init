variable "prefix" {
  type        = "string"
  description = "(Optional) Prefix for resource names."
  default     = ""
}

variable "log_bucket_name" {
  type        = "string"
  description = "(Required) Name of the S3 bucket for storing logs."
}

variable "state_bucket_name" {
  type        = "string"
  description = "(Required) Name of the S3 bucket for storing state."
}

variable "lock_table_name" {
  type        = "string"
  description = "(Required) Name of the DynamoDB table for locking state."
}

variable "log_expiration_enabled" {
  description = "(Optional) Whether state bucket logs should expire."
  default     = false
}

variable "log_expiration_days" {
  description = "(Optional) Number of days before log removal."
  default     = 30
}
