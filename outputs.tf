output "mc_server_public_ip" {
  description = "Public IP of the Minecraft Server (SSH access)"
  value       = aws_instance.mc_server.public_ip
}

output "ecr_repository_url" {
  description = "ECR Repository URL (to be used in GitHub Actions)"
  value       = data.aws_ecr_repository.mc_ecr.repository_url
}

