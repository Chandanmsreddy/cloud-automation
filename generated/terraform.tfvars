aws_region          = "ap-south-1"
instance_count      = 1
ami_id              = "ami-0f58b397bc5c1f2e8"
instance_type       = "t3.micro"
key_pair            = "ec2-latest-key"
security_group_name = "my-terraform-sg"
tag_name            = "cloud-demo"
ingress_ports       = [22, 80, 443]
