variable "ami" {
    description = "this is replace iam"
    type = string
    default = "ami-0230bd60aa48260c6"
  
}


variable "instance_type" {
    description = "this is replace instance type"
    type = string
    default = "t2.micro"
  
}


variable "security_groups" {
    description = "this is replace of security group"
    type = set(string)
    default = [ "sg-077eas2281ea2ebc2b" ]
  
}


variable "key_name" {
    description = "this is replace of key name"
    type = string
    default = "ysp"
  
}


variable "subnet_id" {
    description = "this ids replace of subnetid"
    type = string
    default = "subnet-040e6a413242ed3d0"
  
}


variable "volume_type" {
    description = "this is replace of volumetype"
    type = string
    default = "gp3"
  
}


variable "volume_size" {
    description = "this is replace of volume size"
    type = string
    default = "12"
  
}


variable "cidr_block" {
    description = "this is replace of vpc"
    type = string
    default = "10.0.0.0/16"
    
  
}


variable "subnetcidr_block" {
    description = "this is replace of subnet cidr"
    type = string
    default = "10.0.0.0/16"
  
}


variable "subnetavailability_zone" {
    description = "this is replace of subnet availabilityzone"
    type = string
    default = "us-east-1"
  
}


variable "aws_route_table" {
    description = "this is the replace of routetable"
    type = string
    default = "10.0.0.0/24"
  
}


