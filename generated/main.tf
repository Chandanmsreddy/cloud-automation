resource "aws_security_group" "terraform_sg" {

  name_prefix = "terraform-sg-"

  dynamic "ingress" {

    for_each = var.ingress_ports

    content {

      from_port = ingress.value

      to_port = ingress.value

      protocol = "tcp"

      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "vm" {

  count = var.instance_count

  ami = var.ami_id

  instance_type = var.instance_type

  key_name = "ec2-latest-key"   

  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.terraform_sg.id
  ]

  tags = {
    Name = "${var.tag_name}-${count.index + 1}"
  }
}
