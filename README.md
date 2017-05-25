# Terraform S3 Backend Setup

This terraform module creates
- S3 bucket for remote state storage
- S3 bucket for state bucket access logging
- DyanmoDB table for state locking

To execute:
- create terraform config containing
```
module "tf_prep" {
  source            = "github.com/sshvetsov/tf-backend-init"
  log_bucket_name   = "tfstate-logs"
  state_bucket_name = "tfstate"
  lock_table_name   = "tflock"
}
```
- run `terraform plan`
- run `terraform apply`