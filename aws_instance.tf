resource "aws_instance" "pinstance" {
    ami = var.ami
    instance_type = "t2.micro"
  
    subnet_id = aws_subnet.pbsub.id
    vpc_security_group_ids = [aws_security_group.security-group.id]
    key_name = "mykeypair"
    
    user_data = <<-EOF
    #!/bin/bash
    echo "Installing apache2"
    sudo apt update -y
    sudo apt install apache2 -y
    echo "Install completed"
    EOF

    connection {
        user = "${var.EC2_USER}"
        private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
    }
}


resource "aws_instance" "instancep" {
    ami = var.ami
    instance_type = "t2.micro"
  
    subnet_id = aws_subnet.ptsub.id
    vpc_security_group_ids = [aws_security_group.security-group.id]
    key_name = "mykeypair"
    
    user_data = <<-EOF
    #!/bin/bash
    echo "Installing apache2"
    sudo apt update -y
    sudo apt install apache2 -y
    echo "Install completed"
    EOF

    connection {
        user = "${var.EC2_USER}"
        private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
    }
}