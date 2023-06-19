variable "access_key" {
  description = "AWS access key"
}

variable "secret_key" {
  description = "AWS secret key"
}

variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "instance_type"
  type        = string
}

variable "key_name" {
  description = "Name of your AWS key pair"
  type        = string
}

variable "subnet_id" {
  description = "ID of your AWS subnet"
  type        = string
}

variable "security_group" {
  description = "Security Group"
  type        = string
}

