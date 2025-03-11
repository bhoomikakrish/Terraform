variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  default = "ap-south-1a"
}

variable "ami_id" {
  default = "ami-00bb6a80f01f03502"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "terraform_key"
}

variable "user_data_file" {
  default = "jenkins.sh"
}
