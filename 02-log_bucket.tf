resource "aws_s3_bucket" "log_bucket" {
  bucket = "${var.prefix}${var.log_bucket_name}"
  acl    = "log-delivery-write"

  lifecycle_rule {
    id      = "log-expiration"
    prefix  = ""
    enabled = "${var.log_expiration_enabled}"

    expiration {
      days = "${var.log_expiration_days}"
    }
  }

  tags {
    Name        = "${var.prefix}${var.log_bucket_name}"
    Description = "Bucket for storing terraform state access logs"
    LastEditBy  = "${data.aws_caller_identity.current.user_id}"
  }
}
