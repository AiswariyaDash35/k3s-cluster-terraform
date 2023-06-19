resource "aws_instance" "worker" {
  ami             = var.ami
  instance_type   = var.instance_type
  count           = 2
  key_name        = var.key_name
  subnet_id       = var.subnet_id
  security_groups = [var.security_group]

  connection {
    type        = "ssh"
    user        = "ubuntu" 
    private_key = file(var.path)
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION='v1.25.5+k3s1' sh -s - agent --server https://${var.master_private_ip}:6443 --token=MyK3SToken123"
    ]
  }

  tags = {
    Name = "k3s-worker${count.index + 1}"
  }
}
