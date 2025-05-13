variable "AWS_ACCESS_KEY" {
  type        = string
  description = "AWS access key"
  sensitive   = true
}

variable "AWS_SECRET_KEY" {
  type        = string
  description = "AWS secret key"
  sensitive   = true
}

variable "AWS_REGION" {
  type        = string
  description = "AWS region"
}
