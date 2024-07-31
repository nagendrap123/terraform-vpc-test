variable "project_name" {
    type = string
    default = "expense"
  
}

variable "common_tags" {
    type = map 
    default = {
        Project = "expense"
        Terraform = "true"
        Environment = "dev"
    }
    
}

variable "public_subnet_cidrs" {
    default = ["10.0.1.0/24","10.0.2.0/24"]
  
}