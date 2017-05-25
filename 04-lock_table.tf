resource "aws_dynamodb_table" "lock_table" {
  name           = "${var.prefix}${var.lock_table_name}"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags {
    Name        = "${var.prefix}${var.lock_table_name}"
    Description = "DynamoDB table for locking terraform remote state."
    LastEditBy  = "${data.aws_caller_identity.current.user_id}"
  }
}
