resource "null_resource" "setup-apache-with-indexhtml" {

  connection {
    host = "${aws_instance.apache_server.public_ip}"
    user = "${var.ec2_user}"
    private_key = "${file("${path.cwd}/keys/test.pem")}"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install -y apache2",
      "sudo rm -rf /var/www/html/index.html",
      "echo '<h2>${var.message}</h2>' | sudo tee /var/www/html/index.html"
    ]
  }
}
