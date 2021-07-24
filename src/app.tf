resource "aws_amplify_app" "jay-biesh-site" {
  name       = "jay-bieshaar-site"
  repository = "https://github.com/DasJayYa/jay_bieshaar_site"

  # GitHub personal access token
  access_token = lookup(jsondecode(data.aws_secretsmanager_secret_version.dasjay-token-current.secret_string), "dasjay_token")

  # The default build_spec added by the Amplify Console for React.
  build_spec = <<-EOT
    version: 1
    frontend:
    phases:
        build:
        commands: []
    artifacts:
        baseDirectory: /site/
        files:
        - '**/*'
    cache:
        paths: []
  EOT

  # The default rewrites and redirects added by the Amplify Console.
  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }

  environment_variables = {
    ENV = "dev"
  }
}

resource "aws_amplify_branch" "dev" {
  app_id      = aws_amplify_app.jay-biesh-site.id
  branch_name = "dev"

  stage = "DEVELOPMENT"

}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.jay-biesh-site.id
  branch_name = "main"

  stage = "PRODUCTION"

}