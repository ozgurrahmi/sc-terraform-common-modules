resource "google_storage_bucket" "create_bucket" {
  name          = var.bucket_name
  location      = var.location
  project       = var.project_id
  force_destroy = true
}
