resource "aws_security_group" "allow_all_sg" {
  name_prefix = "allow-all"
  description = "allow ssh access from everywhere to my things"
  vpc_id = "vpc-69ab7a13"
  ingress {
    cidr_blocks = "${var.allowed_ingress_list}"
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
  egress {
    cidr_blocks = "${var.allowed_egress_list}"
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
  tags {
    Name = "allow-all-security-group"
  }
}
