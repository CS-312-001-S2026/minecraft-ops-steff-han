
# Set the Terraform version 
terraform {
  required_version = ">= 1.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.41.0"
    }
  }
}

# Configure how the AWS provider connnects to our account 
provider "aws" {
  region = "us-east-1"
}

# Use the default AWS VPC for our Minecraft server 
data "aws_vpc" "mc_vpc" {
  default = true	
}

# Use our existing AWS security group for Minecraft (SSH 22/TCP 25565)
data "aws_security_group" "mc_sg" {
   id = "sg-01e8b4769d07fab51"
}

# Use our existing ECR repository for our CI/CD pipeline to pull images
data "aws_ecr_repository" "mc_ecr" {
  name = "minecraft-server"
}

# Configure a new EC2 instance 
resource "aws_instance" "mc_server" {
   ami				= var.ami_id
   instance_type		= var.instance_type
   key_name 			= var.key_name 
   vpc_security_group_ids	= [data.aws_security_group.mc_sg.id]
   # We are allowing Terraform to pull from ECR and write to S3 using IAM roles 
   iam_instance_profile		= "LabInstanceProfile"

   tags = {
	Name = "CS312-Ops-3-Minecraft-Server"
   }
}

