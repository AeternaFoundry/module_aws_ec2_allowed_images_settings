variable "ec2_allowed_images_settings" {
  description = <<EOT
Map of ec2_allowed_images_settings, attributes below
Required:
    - state
Optional:
    - region
    - image_criterion (block):
        - creation_date_condition (optional, block):
            - maximum_days_since_created (optional)
        - deprecation_time_condition (optional, block):
            - maximum_days_since_deprecated (optional)
        - image_names (optional)
        - image_providers (optional)
        - marketplace_product_codes (optional)
EOT

  type = map(object({
    state  = string
    region = optional(string)
    image_criterion = optional(list(object({
      creation_date_condition = optional(list(object({
        maximum_days_since_created = optional(number)
      })))
      deprecation_time_condition = optional(list(object({
        maximum_days_since_deprecated = optional(number)
      })))
      image_names               = optional(set(string))
      image_providers           = optional(set(string))
      marketplace_product_codes = optional(set(string))
    })))
  }))
}

