terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "82708a1c32e77a24fea492019eb2ea16fb9d3de9ebd73e32fd1c6cf24a116a51"
}

data "digitalocean_ssh_key" "terraform" {
  name = "main"
}

