resource "tanzu-mission-control_backup_schedule" "sample-full" {
  name = "full-weekly"
  scope {
    cluster {
      management_cluster_name = "MGMT_CLS_NAME"
      provisioner_name        = "PROVISIONER_NAME"
      cluster_name            = "CLS_NAME"
    }
  }

  backup_scope = "FULL_CLUSTER"

  spec {
    schedule {
      rate = "0 12 * * 1"
    }

    template {
      backup_ttl = "2592000s"
      excluded_namespaces= []
      excluded_resources = []

      storage_location = "TARGET_LOCATION_NAME"
    }
  }
}