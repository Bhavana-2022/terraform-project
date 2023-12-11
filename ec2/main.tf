resource "aws_instance" "myfirstinstance" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = var.security_groups
    key_name = var.key_name
    subnet_id = var.subnet_id()
    root_block_device {
      volume_type = var.volume_type
      volume_size = var.volume_size
      delete_on_termination = true
    }

connection {
  type = "ssh"
  user = ubuntu
  private_key = 
  host = 
}

}



resource "aws_vpc" "myvpc" {
  cidr_block = "var.cidr_block"
  
}



resource "aws_subnet" "mysubnet" {
  vpc_id = aws_vpc.myvpc.id
  availability_zone = var.subnetavailability_zone
  cidr_block = var.subnetcidr_block

  
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myvpc.id
}



  
resource "aws_route_table" "myroute" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = var.aws_route_table
    gateway_id = aws_internet_gateway.gw.id
  }
}


resource "aws_route_table_association" "associatewithsubnet" {
  subnet_id = aws_subnet.mysubnet.id
  route_table_id = aws_route_table.myroute.id

}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

 
  




  
