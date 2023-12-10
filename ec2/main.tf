resource "aws_instance" "myfirstinstance" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = var.security_groups
    key_name = var.key_name
    subnet_id = var.subnet_id
    root_block_device {
      volume_type = var.volume_type
      volume_size = var.volume_size
      delete_on_termination = true
    }

}


# resource "aws_s3_bucket" "thisiss3" {
#     bucket = "myawsbucket"
#     force_destroy = true
#     tags = {
#         name = "myawsbucket"
    
#     }
  
# }