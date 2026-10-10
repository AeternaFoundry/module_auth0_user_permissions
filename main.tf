resource "auth0_user_permissions" "user_permissions" {
  for_each = var.user_permissions

  user_id = each.value.user_id

  dynamic "permissions" {
    for_each = each.value.permissions
    content {
      name                       = permissions.value.name
      resource_server_identifier = permissions.value.resource_server_identifier
    }
  }
}

