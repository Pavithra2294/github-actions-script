# S3 Bucket for Source Data
resource "aws_s3_bucket" "source-data-bucket-pre" {
  bucket        = "source-data-bucket-pre"
  force_destroy = true
}


# S3 Bucket for Traget 
resource "aws_s3_bucket" "finance-data-target-pre" {
  bucket        = "finance-data-target-pre"
  force_destroy = true
}

resource "aws_s3_bucket" "glue_code_bucket_pre" {
  bucket = "glue_code_bucket_pre"   # real AWS bucket name (hyphens OK here)
  acl    = "private"
}


resource "aws_s3_object" "glue_script_file" {
  bucket = aws_s3_bucket.glue_code_bucket_pre.id
  key    = "script.py"           
  source = "C:/Users/ashok/OneDrive/Desktop/terraform/script.py"  
}


