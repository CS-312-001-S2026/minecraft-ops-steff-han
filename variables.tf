
# Specify the Amazon Machine Image we want to use for our new EC2 instance 
variable "ami_id" {
  description = "AMI ID for EC2 instance (Ubuntu 26.04 in us-east-1)"
  type	      = string 
  default     = "ami-0ec10929233384c7f"
}

# Specify the EC2 instance type we want to create
variable "instance_type" {
  description = "EC2 instance type"
  type	      = string 
  default     = "t3a.medium"
}

# Specify the name of the SSH key file we're using to connect to the new instance 
variable "key_name" {
  description = "AWS SSH Key pair name" 
  type        = string
  default     = "minecraft-key"
}  



