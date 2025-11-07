provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "pavithra-terraform-demo-bucket2"
}


# S3 Bucket for Source Data
resource "aws_s3_bucket" "source-data-bucket" {
  bucket        = "source-data-bucket"
  force_destroy = true
}


# S3 Bucket for Traget 
resource "aws_s3_bucket" "target-data-bucket" {
  bucket        = "target-data-bucket"
  force_destroy = true
}


resource "aws_s3_bucket" "code_bucket_paithra11" {
  bucket = "code-bucket-paithra1"   # real AWS bucket name (hyphens OK here)
  acl    = "private"
}


resource "aws_s3_object" "script_file11" {
  bucket = aws_s3_bucket.code_bucket_paithra11.id
  key    = "script.py"           
  source = "C:/Users/ashok/OneDrive/Desktop/terraform/script.py"  
}



