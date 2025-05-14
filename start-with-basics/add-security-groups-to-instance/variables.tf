variable "AWS_ACCESS_KEY" {
  type        = string
  description = "AWS access key"
  sensitive   = false
}

variable "AWS_SECRET_KEY" {
  type        = string
  description = "AWS secret key"
  sensitive   = false
}

variable "AWS_REGION" {
  type        = string
  description = "AWS region"
}

variable "AWS_SECURITY_GROUP" {
  type        = list
  description = "AWS Security Groups"
  default = [
    "sg-08454efbd68c4e545",
  ]
}

variable "AWS_AMIs" {
  type = map
  default = {
      us-east-1 = "ami-084568db4383264d4"
  }
}