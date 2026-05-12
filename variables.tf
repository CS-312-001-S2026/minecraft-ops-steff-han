variable "onid" {
  description = "MY ONID used to name/tag resources"
  type        = string 
  default     = "steffhan"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance (Ubuntu 26.04 in us-east-1)"
  type	      = string 
  default     = "ami-0ec10929233384c7f"
}

variable "instance_type" {
  description = "EC2 instance type"
  type	      = string 
  default     = "t3a.medium"
}

variable "key_name" {
  description = "AWS SSH Key pair name" 
  type        = string
  default     = "minecraft-key"
}  



