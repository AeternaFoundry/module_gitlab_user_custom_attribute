resource "gitlab_user_custom_attribute" "user_custom_attributes" {
  for_each = var.user_custom_attributes

  key   = each.value.key
  user  = each.value.user
  value = each.value.value
}

