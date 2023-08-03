# Output Export To Module
output "EC2-Module_Output" {
    value = "Output From EC2 Module"
}   

output "Default-Public_IP" {
    value = aws_instance.web.public_ip
}

output "AMI-ID" {
  value = "AMI ID is: ${aws_instance.web.ami}"
}
