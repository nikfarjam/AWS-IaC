output "vpc_id" {
  value = aws_vpc.tr_vpc.id
}

output "private_subnet_group_name" {
  value = aws_subnet.tr_private_subnet.name
}

output "public_subnet_group_name" {
  value = aws_subnet.tr_public_subnet.name
}

output "vpc_security_group_http" {
  value = aws_security_group.tr_security_group_http.id
}

output "vpc_security_group_https" {
  value = aws_security_group.tr_security_group_https.id
}

output "vpc_security_group_ssh" {
  value = aws_security_group.tr_security_group_ssh.id
}