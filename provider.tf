provider "aws" {
    version = "~> 3.0"
    region = var.region
}

terraform {
    backend "s3" {
        bucket = "924729413603-terraformbackend"
        key = "website-mattvermeer"
        region = "ap-southeast-2"
        dynamodb_table = "terraform-lock"
    }
}