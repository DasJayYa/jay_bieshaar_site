resource "aws_s3_bucket" "mattvermeer_bucket" {
  bucket = "website-mattvermeer.com"
  acl = var.acl

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}


### S3 Objects ###

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.mattvermeer_bucket.bucket
  key    = "index.html"
  source = "files/index.html"
  acl = var.acl

  etag = filemd5("files/index.html")
  content_type = "text/html"
}

resource "aws_s3_bucket_object" "error" {
  bucket = aws_s3_bucket.mattvermeer_bucket.bucket
  key    = "error.html"
  source = "files/error.html"
  acl = var.acl

  etag = filemd5("files/error.html")
  content_type = "text/html"
}

resource "aws_s3_bucket_object" "robots" {
  bucket = aws_s3_bucket.mattvermeer_bucket.bucket
  key    = "robots.txt"
  source = "files/robots.txt"
  acl = var.acl

  etag = filemd5("files/robots.txt")
  content_type = "text/html"
}

resource "aws_s3_bucket_object" "css" {
  bucket = aws_s3_bucket.mattvermeer_bucket.bucket
  key    = "assets/css/style.css"
  source = "files/assets/style.css"
  acl = var.acl

  etag = filemd5("files/assets/style.css")
  content_type = "text/css"
}