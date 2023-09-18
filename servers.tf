resource "aws_security_group" "server" {
  name        = "youtube-server"
  description = "Allow inbound traffic"
  vpc_id      = aws_vpc.youtube.id
  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami           = "ami-1241231241"
  instance_type = "t3_nano"
  subnet_id     = aws_subnet.youtube_sub1.id
  tags = {
    Name = "instance-web"
  }
}