variable "project_id" {
  description = "Id of the project"
  type        = string
}

variable "topic_name" {
  description = "Name of the topic"
  type        = string
}

variable "env_name" {
  description = "Name of the environment. It could be only uat,stg,prd"
  type        = string
}
