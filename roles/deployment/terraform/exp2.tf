resource "digitalocean_droplet" "exp2" {
  image      = "debian-11-x64"
  name       = "exp2"
  region     = "ams3"
  size       = "s-1vcpu-1gb"
  monitoring = "true"
  tags       = ["ansible", "terraform"]
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
  connection {
    host    = self.ipv4_address
    user    = "root"
    type    = "ssh"
    timeout = "2m"
    agent   = "true"
  }
}
