provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_dns_managed_zone" "studyguideace" {
  name        = var.managed_zone_name
  dns_name    = "${var.base_domain}."
  description = "Managed DNS zone for ${var.base_domain}"
}

resource "google_dns_record_set" "ui" {
  name         = "${var.ui_host}.${var.base_domain}."
  type         = "CNAME"
  ttl          = var.dns_ttl
  managed_zone = google_dns_managed_zone.studyguideace.name
  rrdatas      = ["ghs.googlehosted.com."]
}

resource "google_dns_record_set" "api" {
  name         = "${var.api_host}.${var.base_domain}."
  type         = "CNAME"
  ttl          = var.dns_ttl
  managed_zone = google_dns_managed_zone.studyguideace.name
  rrdatas      = ["ghs.googlehosted.com."]
}
