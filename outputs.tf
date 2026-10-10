output "ec2_allowed_images_settings_image_criterion" {
  description = "Map of image_criterion values across all ec2_allowed_images_settings, keyed the same as var.ec2_allowed_images_settings"
  value       = { for k, v in aws_ec2_allowed_images_settings.ec2_allowed_images_settings : k => v.image_criterion if v.image_criterion != null && length(v.image_criterion) > 0 }
}
output "ec2_allowed_images_settings_region" {
  description = "Map of region values across all ec2_allowed_images_settings, keyed the same as var.ec2_allowed_images_settings"
  value       = { for k, v in aws_ec2_allowed_images_settings.ec2_allowed_images_settings : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_allowed_images_settings_state" {
  description = "Map of state values across all ec2_allowed_images_settings, keyed the same as var.ec2_allowed_images_settings"
  value       = { for k, v in aws_ec2_allowed_images_settings.ec2_allowed_images_settings : k => v.state if v.state != null && length(v.state) > 0 }
}

