resource "tanzu-mission-control_backup_schedule" "sample-full" {
  name = "full-weekly"
  scope {
    cluster {
      management_cluster_name = var.management_cluster_name
      provisioner_name        = var.provisioner_name
      cluster_name            = var.cluster_name
    }
  }

  backup_scope = var.backup_scope

  spec {
    schedule {
      rate = "0 12 * * 1"
    }

    template {
      backup_ttl = "2592000s"
      excluded_namespaces= []
      excluded_resources = []

      storage_location = var.storage_location
    }
  }
}