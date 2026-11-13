output "services_lookup_id" {
  description = "Map of id values across all services_lookup, keyed the same as var.services_lookup"
  value       = { for k, v in data.consul_services.services_lookup : k => v.id }
}
output "services_lookup_datacenter" {
  description = "Map of datacenter values across all services_lookup, keyed the same as var.services_lookup"
  value       = { for k, v in data.consul_services.services_lookup : k => v.datacenter }
}
output "services_lookup_names" {
  description = "Map of names values across all services_lookup, keyed the same as var.services_lookup"
  value       = { for k, v in data.consul_services.services_lookup : k => v.names }
}
output "services_lookup_query_options" {
  description = "Map of query_options values across all services_lookup, keyed the same as var.services_lookup"
  value       = { for k, v in data.consul_services.services_lookup : k => v.query_options }
  sensitive   = true
}
output "services_lookup_services" {
  description = "Map of services values across all services_lookup, keyed the same as var.services_lookup"
  value       = { for k, v in data.consul_services.services_lookup : k => v.services }
}
output "services_lookup_tags" {
  description = "Map of tags values across all services_lookup, keyed the same as var.services_lookup"
  value       = { for k, v in data.consul_services.services_lookup : k => v.tags }
}

