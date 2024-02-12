#provider "aws" {
#  region = "eu-north-1"
#}

resource "aws_instance" "hello-world-instance" {
  ami = "ami-0014ce3e52359afbd"
  instance_type = "t3.micro"

  user_data = <<-EOF
              #!/bin/bash
              docker run -p 80:80 hello-world-app
              EOF

    tags = {
        Name = "HelloWorldInstance"
    }
}