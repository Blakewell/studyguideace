output "ui_domain" {
  description = "The fully qualified UI domain created by Terraform."
  value       = "${var.ui_host}.${var.base_domain}"
}

output "api_domain" {
  description = "The fully qualified API domain created by Terraform."
  value       = "${var.api_host}.${var.base_domain}"
}

output "dns_zone_name" {
  description = "The Cloud DNS managed zone name."
  value       = google_dns_managed_zone.studyguideace.name
}
