output "public-instance" {
    description = "public ip"
    value       = aws_instance.pinstance.public_ip
}


output "private-instance" {
    description = "private ip"
    value       = aws_instance.instancep.private_ip
}