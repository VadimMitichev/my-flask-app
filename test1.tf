resource "aws_s3_bucket" "example" {
  bucket = "my-bucket-${random_string.bucket_suffix.result}"
  
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id
  
  block_public_acls   = false
  block_public_policy = false
}

variable "db_password" {
  default = "admin123"
}