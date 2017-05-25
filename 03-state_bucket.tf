resource "aws_s3_bucket" "state_bucket" {
  bucket = "${var.prefix}${var.state_bucket_name}"
  acl    = "private"

  versioning {
    enabled = true
  }

  logging {
    target_bucket = "${aws_s3_bucket.log_bucket.id}"
    target_prefix = "${var.prefix}${var.state_bucket_name}/"
  }

  tags {
    Name        = "${var.prefix}${var.state_bucket_name}"
    Description = "Bucket for storing terraform remote state."
    LastEditBy  = "${data.aws_caller_identity.current.user_id}"
  }
}
