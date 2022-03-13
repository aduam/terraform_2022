output "vpc" {
  value = aws_vpc.main
}

output "aws_public1_subnet" {
  value = aws_subnet.public_subnet_1.id
}

output "aws_public2_subnet" {
  value = aws_subnet.public_subnet_2.id
}

output "aws_private1_subnet" {
  value = aws_subnet.private_subnet_1.id
}

output "aws_private2_subnet" {
  value = aws_subnet.private_subnet_2.id
}

output "aws_eip" {
  value = aws_eip.eip.id
}
