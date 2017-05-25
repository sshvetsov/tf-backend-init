output "log_bucket_id" {
  value = "${aws_s3_bucket.log_bucket.id}"
}

output "state_bucket_id" {
  value = "${aws_s3_bucket.state_bucket.id}"
}

output "lock_table_id" {
  value = "${aws_dynamodb_table.lock_table.id}"
}
