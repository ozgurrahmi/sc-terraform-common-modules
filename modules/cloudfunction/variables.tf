variable "project_id" {
  description = "Id of the project"
  type        = string
}

variable "region_id" {
  description = "Name of the region"
  type        = string
}

variable "env_name" {
  description = "Name of the environment. It could be only uat,stg,prd"
  type        = string
}

variable "bucket_name" {
  description = "Name of the bucket for the cloud function source."
  type        = string
}

variable "name" {
  description = "Name of the cf"
  type        = string
}

variable "runtime" {
  description = "Name of the runtime"
  type        = string
}

variable "topic_name" {
  description = "Name of the topic which triggers this cf"
  type        = string
}

variable "source_path" {
  description = "Source address of the zip file"
  type        = string
}

variable "entry_point" {
  description = "entry point for the source code"
  type        = string
}

