locals {
  topic_name        = format("%s-%s", var.topic_name, var.env_name)
  subscription_name = format("%s-%s-%s", var.topic_name, "subscription", var.env_name)
}

resource "google_pubsub_topic" "create-topic" {
  name = local.topic_name
}

resource "google_pubsub_subscription" "create-subscription" {
  name                 = local.subscription_name
  topic                = local.topic_name
  ack_deadline_seconds = 10
}

