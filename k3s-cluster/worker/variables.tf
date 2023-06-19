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

variable "path" {
  description = "Path to the Private Key"
  type        = string
  default     = "C:/Users/Kanhu/Desktop/Guddi/key/master1.pem"
}

variable "master_private_ip" {
  description = "Private IP of the master instance"
  type        = string
}