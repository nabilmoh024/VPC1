variable "vpc_id" {
  type        = string
  description = "ID of the existing VPC to launch the instance in"
  default     = "vpc-0617347c5ed9da706"
}

variable "subnet_id" {
  type        = string
  description = "ID of the existing subnet to launch the instance in"
  default     = "subnet-0a7c3cb435cffcf3f"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the instance (region-specific)"
  default     = "ami-066c4849e6b3a1e3d" # Amazon Linux 2 AMI (HVM), SSD Volume Type for ap-south-1
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "Name of an existing EC2 key pair for SSH access"
  default     = null
}

variable "ssh_allowed_cidr" {
  type        = string
  description = "CIDR allowed to SSH into the instance"
  default     = "0.0.0.0/0"
}

variable "instance_name" {
  type        = string
  description = "Name tag for the instance"
  default     = "test-instance"
}