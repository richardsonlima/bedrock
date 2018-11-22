module "infra" {
  source = "../../module"

  elasticsearch_master_storage_class = "managed-premium"
  elasticsearch_data_storage_class   = "managed-premium"
  elasticsearch_data_storage_size    = "16Gi"

  prometheus_alertmanager_storage_class = "managed-premium"
  prometheus_server_storage_class       = "managed-premium"
  prometheus_server_storage_size        = "8Gi"

  traefik_ssl_enabled   = "true"
  traefik_ssl_enforced  = "true"
  ingress_replica_count = "3"
}