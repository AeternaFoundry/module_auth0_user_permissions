variable "user_permissions" {
  description = <<EOT
Map of user_permissions, attributes below
Required:
    - user_id
    - permissions (block):
        - name (required)
        - resource_server_identifier (required)
EOT

  type = map(object({
    user_id = string
    permissions = list(object({
      name                       = string
      resource_server_identifier = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.user_permissions : (
        length(v.permissions) >= 1
      )
    ])
    error_message = "Each permissions list must contain at least 1 items"
  }
}

