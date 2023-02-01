terraform {
    required_version = "~> 1.3.7" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "ap-south-1" 
        #profile = "default"
	}

resource "aws_instance" "Rahulinfra" {
	ami = "ami-01a4f99c4ac11b03c" 
	instance_type = "t2.micro"
}
