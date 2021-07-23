terraform {
  backend "s3" {
    bucket = "tf-backend-state-biesh"
    region = "ap-southeast-2"
    key = "terraform-ec2/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    encrypt = true
  }
}