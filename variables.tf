variable "ec2_instance_type" {
  default = "t3.micro"
  type    = string
}

variable "ec2_root_storage_size" {
  default = 8
  type    = number
}

variable "ec2_ami_id" {
  default = "ami-019715e0d74f695be"
  type    = string
}

variable "env" {
  default = "dev"
  type = string
}