variable "user_custom_attributes" {
  description = <<EOT
Map of user_custom_attributes, attributes below
Required:
    - key
    - user
    - value
EOT

  type = map(object({
    key   = string
    user  = number
    value = string
  }))
}

