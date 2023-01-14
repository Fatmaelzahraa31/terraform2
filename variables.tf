variable "cidr" {
    description = "variable of cidr"
    default      = "10.0.0.0/16"
    type        = string
}

variable "region" {
    description = "variable of region"
    default      = "us-east-1"
    type        = string
}

variable "pbsubnet" {
    description = "variable of public subnet"
    default      = "10.0.0.0/24"
    type        = string
}

variable "ptsubnet" {
    description = "variable of private subnet"
    default      = "10.0.1.0/24"
    type        = string
}

variable "zone" {
    description = "variable of avability zone"
    default      = "us-east-1a"
    type        = string
} 

variable "pbroute" {
    description = "variable of public route table"
    default      = "0.0.0.0/0"
    type        = string
}

variable "ptroute" {
    description = "variable of private route table"
    default      = "0.0.0.0/0"
    type        = string
}

variable "cidr-block" {
    description = "variable of cidr blocks"
    default      = "0.0.0.0/0"
    type        = string
}

variable "ami" {
    description = "variable of ami"
    default      = "ami-06878d265978313ca"
    type        = string
}