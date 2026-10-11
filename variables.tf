variable "services_lookup" {
  description = <<EOT
Map of services_lookup, attributes below
Optional:
    - query_options (block):
        - allow_stale (optional)
        - datacenter (optional)
        - namespace (optional)
        - near (optional)
        - node_meta (optional)
        - partition (optional)
        - require_consistent (optional)
        - token (optional)
        - wait_index (optional)
        - wait_time (optional)
EOT

  type = map(object({
    query_options = optional(list(object({
      allow_stale        = optional(bool)
      datacenter         = optional(string)
      namespace          = optional(string)
      near               = optional(string)
      node_meta          = optional(map(string))
      partition          = optional(string)
      require_consistent = optional(bool)
      token              = optional(string)
      wait_index         = optional(number)
      wait_time          = optional(string)
    })))
  }))
}

