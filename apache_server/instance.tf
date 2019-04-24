resource "aws_instance" "apache_server" {
  key_name = "test"
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.allow_all_sg.id}"] 

  tags {
    Name = "${var.name}"
  }
}
