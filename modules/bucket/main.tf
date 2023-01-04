resource "google_storage_bucket" "create_bucket" {
  bucket   = var.bucket_name
  location = var.location
}
