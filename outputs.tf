output "user_custom_attributes_id" {
  description = "Map of id values across all user_custom_attributes, keyed the same as var.user_custom_attributes except keys with no id are omitted"
  value       = { for k, v in gitlab_user_custom_attribute.user_custom_attributes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_custom_attributes_key" {
  description = "Map of key values across all user_custom_attributes, keyed the same as var.user_custom_attributes except keys with no key are omitted"
  value       = { for k, v in gitlab_user_custom_attribute.user_custom_attributes : k => v.key if v.key != null && length(v.key) > 0 }
}
output "user_custom_attributes_user" {
  description = "Map of user values across all user_custom_attributes, keyed the same as var.user_custom_attributes except keys with no user are omitted"
  value       = { for k, v in gitlab_user_custom_attribute.user_custom_attributes : k => v.user if v.user != null }
}
output "user_custom_attributes_value" {
  description = "Map of value values across all user_custom_attributes, keyed the same as var.user_custom_attributes except keys with no value are omitted"
  value       = { for k, v in gitlab_user_custom_attribute.user_custom_attributes : k => v.value if v.value != null && length(v.value) > 0 }
}

