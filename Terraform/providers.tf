provider "aws" {
  # Configuration options
  region     = "eu-central-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

provider "aws" {
  alias = "us_east_1"
  # Configuration options
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

provider "argocd" {
  server_addr = local.argocd_host
  # auth_token  = var.argocd_auth_token
  username = var.argocd_username
  password = var.argocd_password
}