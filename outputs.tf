output "user_permissions_id" {
  description = "Map of id values across all user_permissions, keyed the same as var.user_permissions except keys with no id are omitted"
  value       = { for k, v in auth0_user_permissions.user_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_permissions_permissions" {
  description = "Map of permissions values across all user_permissions, keyed the same as var.user_permissions except keys with no permissions are omitted"
  value       = { for k, v in auth0_user_permissions.user_permissions : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "user_permissions_user_id" {
  description = "Map of user_id values across all user_permissions, keyed the same as var.user_permissions except keys with no user_id are omitted"
  value       = { for k, v in auth0_user_permissions.user_permissions : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

