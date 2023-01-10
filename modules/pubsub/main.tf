locals {
  topic_name        = format("%s-%s", var.topic_name, var.env_name)
  subscription_name = format("%s-%s-%s", var.topic_name, "subscription", var.env_name)
}

resource "google_pubsub_topic" "create-topic" {
  name = local.topic_name
}


