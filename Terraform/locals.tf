
locals {
  domain_name    = "appstellar.training"
  hosted_zone_id = data.aws_route53_zone.default.zone_id
  alternative_domain_names = [
    "ardin.appstellar.training",
    "*.appstellar.training",
    "*.ardin.appstellar.training"
  ]
  argocd_host          = "argocd.appstellar.training"
  eks_cluster_endpoint = "https://kubernetes.default.svc"
}