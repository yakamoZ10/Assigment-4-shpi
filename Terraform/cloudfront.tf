resource "argocd_application" "web_client2" {
  metadata {
    name = "ardin-assignment-4-api"
    #labels = []
    #annotations = []
  }
  wait = false

  spec {
    project = "ardin"
    source {
      repo_url        = "git@github.com:appstellar-training/assignment-4-api.git"
      path            = "helm/api"
      target_revision = "main"

      helm {
        value_files = ["values.yaml"]
      }
    }

    destination {
      server    = local.eks_cluster_endpoint
      namespace = "ardin"
    }

    sync_policy {
      automated {
        prune       = true
        self_heal   = true
        allow_empty = true
      }
    }
  }
}