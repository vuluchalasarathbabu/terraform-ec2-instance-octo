variable "key_name" {
  default = "memo"
}


variable "vpc_id" {
    type = string
    description = "VPC ID"
    default = "vpc-073f8eb832fcb9036"
}

variable "subnet_id" {
    type = string
    description = "Resource Subnet ID"
    default = "subnet-03ca326dd49f24a5e"
}

variable "user_data" {
  default = "./config.sh"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "volume_size" {
  type        = number    
  default = 8
}


variable "instance_count" {
  description = "Number of instances to launch"
  type        = number
  default     = 1
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-0885b1f6bd170450c"
}

