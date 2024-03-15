resource "aws_instance" "frontend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"

  vpc_security_group_ids=["sg-0c06371b05b6070a7"]
    tags = {
    Name="frontend1"
  }

}
resource "aws_instance" "backend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  vpc_security_group_ids=["sg-0c06371b05b6070a7"]
  tags = {
    Name="backend"
  }
}
resource "aws_instance" "mysql" {
  ami           = "ami-05f020f5935e52dc4"
  vpc_security_group_ids=["sg-0c06371b05b6070a7"]
  instance_type = "t3.micro"
  tags = {
    Name="mysql"
  }
}