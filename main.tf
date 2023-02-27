<<<<<<< HEAD
provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "bucket-81246132" {
  bucket = "bucket-lab81246132"


  tags = {
    Name        = "Bucket teste"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.bucket-81246132.id
  acl    = "public-read"
}


resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket-81246132.id
  versioning_configuration {
    status = "Enabled"
  }
=======
provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "bucket-81246132" {
  bucket = "bucket-lab81246132"


  tags = {
    Name        = "Bucket teste"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.bucket-81246132.id
  acl    = "public"
}


resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket-81246132.id
  versioning_configuration {
    status = "Enabled"
  }
>>>>>>> 0fd4453ee7a25f09404e8dc412c0b4b24189f2af
}