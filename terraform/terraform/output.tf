output "jenkins_pub_ip" {
  value = aws_instance.Jenkins_Server.*.public_ip
}

output "ansible_pub_ip" {
  value = aws_instance.ansible_server.*.public_ip
}
 
