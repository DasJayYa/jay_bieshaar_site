resource "aws_route53_zone" "mattvermeer_r53" {
  name = "mattvermeer.com."
}

resource "aws_route53_record" "mattvermeer_ssl_validation" {
  zone_id = aws_route53_zone.mattvermeer_r53.zone_id
  name = "_0e682b02919ba2ad605ba6ecdaba40f9.mattvermeer.com."
  type = "CNAME"
  ttl = "15"
  records = ["_f4c75b4ca082c0ee3f2eb4098839402a.bsgbmzkfwj.acm-validations.aws."]
}