resource "aws_instance" "ec2" {
  ami           = "ami-0892d3c7ee96c0bf7"
  instance_type = "t2.micro"
  subnet_id = var.public1_subnet
  key_name = aws_key_pair.alan.key_name

  tags = {
    Name = "ec2-alan"
  }
}

resource "aws_security_group" "sg" {
  name        = "sg_alan"
  vpc_id      = var.vpc.id

  ingress {
    description      = "22 port"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "80 port"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "sg_alan"
  }
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.sg.id
  network_interface_id = aws_instance.ec2.primary_network_interface_id
}

resource "aws_key_pair" "alan" {
  key_name   = "alan-key"
  public_key = var.ssh-key
}
