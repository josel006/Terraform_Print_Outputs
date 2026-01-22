# This lab creates an S3 bucket and an AWS VPC then uses the output block to display the ARN of the S3 bucket and the ID of the VPC

provider "aws" {
  region  = "us-east-1"
  profile = "default" # This is the name on yopur local computer used by Terraform
}

resource "aws_s3_bucket" "mys3" {
  bucket = "name-of-the-bucket-2009999" #S3 bucket name
}

resource "aws_vpc" "Lab_VPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "VPC Name" # VPC name on AWS
  }
}

output "s3_arn" { # Output the arn name after the S3 is created on AWS, you can also see this info in the "tfstate file"
  value = aws_s3_bucket.mys3.arn
}

output "VPC_id" { # Output the VPC ID after the VPC is created on AWS, you can also see this info in the "tfstate file"
  value = aws_vpc.Lab_VPC.id
}
