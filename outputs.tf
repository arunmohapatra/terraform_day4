output "instance_id" {
  description = "ID of the web server"
  value       = module.web_server.instance_id
}

output "private_ip" {
  description = "Private IP of the web server"
  value       = module.web_server.private_ip
}

output "public_ip" {
  description = "Public IP of the web server"
  value       = module.web_server.public_ip
}