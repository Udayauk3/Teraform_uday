resource "aws_instance" "flm" {
  tags = {
    Name = "Server - 1"
  }
  ami           = "ami-01edba92f9036f76e"
  instance_type = "t3.micro"
  key_name      = "k8s"
}


resource "aws_instance" "devops" {
  tags = {
    Name = "Server - 2"
  }
  ami           = "ami-04ea4e8270c27626c"
  instance_type = "t3.micro"
  key_name      = "uday"
  provider = aws.zone2
}
