resource "aws_acm_certificate" "mattvermeer_cert" {
  domain_name       = var.domain
  validation_method = "DNS"

  tags = {
    Environment = "Production"
    ConnectedTo = "Cloudfront"
  }

  lifecycle {
    create_before_destroy = true
  }
}