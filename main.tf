provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-east-1"
}

module "how_are_you" {
  source = "./apache_server"

  name = "apache_server"
  instance_type = "t2.micro"
  ami = "ami-035be7bafff33b6b6"

  allowed_ingress_list = ["0.0.0.0/0"]
  allowed_egress_list = ["0.0.0.0/0"]

  ec2_user = "ec2-user"

  message = "Hello"
}
