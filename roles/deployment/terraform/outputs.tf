output "exp1-ip" {
  description = "IP address of deployed server"
  value       = digitalocean_droplet.exp1.ipv4_address
}
output "exp2-ip" {
  description = "IP address of deployed server"
  value       = digitalocean_droplet.exp2.ipv4_address
}
