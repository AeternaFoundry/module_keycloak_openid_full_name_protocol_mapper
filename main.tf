resource "keycloak_openid_full_name_protocol_mapper" "openid_full_name_protocol_mappers" {
  for_each = var.openid_full_name_protocol_mappers

  name                = each.value.name
  realm_id            = each.value.realm_id
  add_to_access_token = each.value.add_to_access_token
  add_to_id_token     = each.value.add_to_id_token
  add_to_userinfo     = each.value.add_to_userinfo
  client_id           = each.value.client_id
  client_scope_id     = each.value.client_scope_id
}

