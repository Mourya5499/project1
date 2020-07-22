resource "aws_instance" "Jenkins_Server" {
  ami				= var.AWS_AMI
  instance_type			= "t2.micro"
  vpc_security_group_ids	= ["sg-0c83e15ed6647d343"]
  key_name			= "EC-2"
  tags = {
    Name = "Jenkins_Server"
  }

  connection {
    host        = self.public_ip
    type        = "ssh"
    user    	= "ubuntu"
    private_key	= file("keys/EC-2.pem")

  }
}



resource "aws_instance" "ansible_server" {
  ami                           = var.AWS_AMI
  instance_type                 = "t2.micro"
  vpc_security_group_ids        = ["sg-0c83e15ed6647d343"]
  key_name                      = "EC-2"
  tags = {
    Name = "ansible_server"
  }

  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("keys/EC-2.pem")

  }
}

resource "aws_instance" "tom-doc_server" {
  ami                           = var.AWS_AMI
  instance_type                 = "t2.micro"
  vpc_security_group_ids        = ["sg-0c83e15ed6647d343"]
  key_name                      = "EC-2"
  tags = {
    Name = "tom-dock"
  }

  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("keys/EC-2.pem")

  }
}

resource "aws_instance" "k8_server" {
  ami                           = var.AWS_AMI
  instance_type                 = "t2.micro"
  vpc_security_group_ids        = ["sg-0c83e15ed6647d343"]
  key_name                      = "EC-2"
  tags = {
    Name = "kb8_Server"
  }

  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("keys/EC-2.pem")

  }
}





resource "aws_instance" "k8_Master" {
  ami                           = var.AWS_AMI
  instance_type                 = "t2.micro"
  vpc_security_group_ids        = ["sg-0c83e15ed6647d343"]
  key_name                      = "EC-2"
  tags = {
    Name = "kb8_Master"
  }

  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("keys/EC-2.pem")

  }
}
