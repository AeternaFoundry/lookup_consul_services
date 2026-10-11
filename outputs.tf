output "services_lookup_id" {
  description = "Map of id values across all services_lookup, keyed the same as var.services_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_services.services_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "services_lookup_datacenter" {
  description = "Map of datacenter values across all services_lookup, keyed the same as var.services_lookup except keys with no datacenter are omitted"
  value       = { for k, v in data.consul_services.services_lookup : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "services_lookup_names" {
  description = "Map of names values across all services_lookup, keyed the same as var.services_lookup except keys with no names are omitted"
  value       = { for k, v in data.consul_services.services_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "services_lookup_query_options" {
  description = "Map of query_options values across all services_lookup, keyed the same as var.services_lookup except keys with no query_options are omitted"
  value       = { for k, v in data.consul_services.services_lookup : k => v.query_options if v.query_options != null && length(v.query_options) > 0 }
  sensitive   = true
}
output "services_lookup_services" {
  description = "Map of services values across all services_lookup, keyed the same as var.services_lookup except keys with no services are omitted"
  value       = { for k, v in data.consul_services.services_lookup : k => v.services if v.services != null && length(v.services) > 0 }
}
output "services_lookup_tags" {
  description = "Map of tags values across all services_lookup, keyed the same as var.services_lookup except keys with no tags are omitted"
  value       = { for k, v in data.consul_services.services_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

