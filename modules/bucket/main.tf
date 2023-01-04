resource "aws_s3_bucket" "create_bucket" {
  bucket   = var.bucket_name
  location = var.location
}
