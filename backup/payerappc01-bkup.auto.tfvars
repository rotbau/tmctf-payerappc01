management_cluster_name = "h2o-4-24734"       // Management cluster name from TMC
provisioner_name = "payer-ns"                 // vSphere Namespace to provison cluster in
cluster_name = "payerappc01-tf"               // Cluster to schedule
backup_job_name = "payerappc01-weekly"
backup_scope = "FULL_CLUSTER"
storage_location = "bauerbo-azure-blob"