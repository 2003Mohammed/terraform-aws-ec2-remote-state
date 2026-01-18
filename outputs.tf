output "ec2_instance_id" {
  value = aws_instance.vpc.id
}

output "ec2_public_ip" {
  value = aws_instance.vpc.public_ip
}
