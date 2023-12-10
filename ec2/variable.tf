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