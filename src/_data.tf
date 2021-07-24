//Get Secret from secret Manager
data "aws_secretsmanager_secret" "dasjay-token" {
  name = "dasjay_token"
}

data "aws_secretsmanager_secret_version" "dasjay-token-current" {
  secret_id = data.aws_secretsmanager_secret.dasjay-token.id
}