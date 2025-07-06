provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket = var.bucket_name
   
  tags = {
    Name        = var.bucket_name
    Environment = "dev"
    }

  }
  
resource "aws_s3_bucket_versioning" "devops_bucket_versioning" {
  bucket = aws_s3_bucket.devops_bucket.id
  
    versioning_configuration {
      status = "Enabled"
    }


}