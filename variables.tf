variable ami_id {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "ami of the instance"
}

variable instance_type {
  type        = string
  default     = "t3.micro"
}

variable instance_names {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}

variable sg_name {
    default = "allow_ssh_terraform"
}

variable sg_description {
    default = "Allow port number 22 for SSH access"
}

variable common_tags {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    } 
}