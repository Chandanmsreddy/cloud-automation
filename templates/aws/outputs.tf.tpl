output "instance_public_ips" {

  value = aws_instance.vm[*].public_ip
}