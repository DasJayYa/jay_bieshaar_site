variable "region" {
    default = "ap-southeast-2"
}

variable "domain" {
    default = "mattvermeer.com"
}

variable "www" {
    default = "www.mattvermeer.com"
}

variable "acl" {
    default = "public-read"
}

variable "min_ttl" {
    default = 0
}

variable "default_ttl" {
    default = 300
}

variable "max_ttl" {
    default = 86400
}

variable "acm_cert_arn" {
    default = "arn:aws:acm:us-east-1:924729413603:certificate/71724b3e-9c54-4863-985f-b9e29d7c26fd"
}