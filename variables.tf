 variable "location" {
 default = "ap-south-1"
 }

 variable "instance_type" {
   default = "t2.micro"
 }

 variable "ami" {
   default = "ami-08e5424edfe926b43"
 }

variable "key_name" {
   default = "dev"
}

variable "vpc-cidr" {
   default = "172.16.0.0/16"
}

 variable "sn1-cidr" {
     default = "172.16.1.0/24"
}

variable "sn2-cidr" {  
    default = "172.16.2.0/24"
}


