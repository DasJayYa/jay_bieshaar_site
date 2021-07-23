//Get Secret from secret Manager
data "aws_secretsmanager_secret" "dasjay-token" {
  name = "dasjay_token"
}