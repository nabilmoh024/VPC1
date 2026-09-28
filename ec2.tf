resource "aws_security_group" "test_sg" {
  name        = "${var.instance_name}-sg"
  description = "Allow SSH access for test EC2 instance"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_allowed_cidr]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.instance_name}-sg"
  }
}

resource "aws_instance" "test" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.test_sg.id]

  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.test.id
}

output "instance_private_ip" {
  value = aws_instance.test.private_dns
}