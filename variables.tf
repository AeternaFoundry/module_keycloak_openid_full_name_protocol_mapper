variable "openid_full_name_protocol_mappers" {
  description = <<EOT
Map of openid_full_name_protocol_mappers, attributes below
Required:
    - name
    - realm_id
Optional:
    - add_to_access_token
    - add_to_id_token
    - add_to_userinfo
    - client_id
    - client_scope_id
EOT

  type = map(object({
    name                = string
    realm_id            = string
    add_to_access_token = optional(bool)
    add_to_id_token     = optional(bool)
    add_to_userinfo     = optional(bool)
    client_id           = optional(string)
    client_scope_id     = optional(string)
  }))
}

