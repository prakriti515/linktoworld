output "masterpubip" {
  value = aws_instance.ec2-kub-master.public_ip  
}
output "workerpubip" {
  value = aws_instance.ec2-kub-worker.public_ip  
}
