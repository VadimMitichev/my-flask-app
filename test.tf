resource "aws_instance" "example" {
  ami           = "ami-12345"
  instance_type = "t3.xlarge"
  
  vpc_security_group_ids = ["sg-12345"]
  
  root_block_device {
    volume_size = 100
  }
}

variable "password" {
  default = "admin123"
}