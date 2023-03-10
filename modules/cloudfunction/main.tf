locals {
  source_name = format("%s-cf-%s.zip", var.name, var.env_name)
  cf_name     = format("%s-cf-%s", var.name, var.env_name)
}

resource "google_storage_bucket_object" "archive" {
  name   = local.source_name
  bucket = var.bucket_name
  source = var.source_path
}

resource "google_cloudfunctions_function" "function" {
  name                  = local.cf_name
  runtime               = var.runtime
  project               = var.project_id
  region                = var.region_id
  source_archive_bucket = var.bucket_name
  source_archive_object = google_storage_bucket_object.archive.name
  entry_point           = var.entry_point
  event_trigger {
    event_type = "google.pubsub.topic.publish"
    resource   = var.topic_name
  }
}

# IAM entry for a single user to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}
