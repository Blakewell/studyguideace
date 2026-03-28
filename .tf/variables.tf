variable "project_id" {
  description = "The Google Cloud project ID where DNS resources will be created."
  type        = string
}

variable "region" {
  description = "Google Cloud region for provider configuration."
  type        = string
  default     = "us-central1"
}

variable "managed_zone_name" {
  description = "Name of the Cloud DNS managed zone to create."
  type        = string
  default     = "studyguideace-com-zone"
}

variable "base_domain" {
  description = "The root domain for the DNS records."
  type        = string
  default     = "studyguideace.com"
}

variable "ui_host" {
  description = "Subdomain name for the UI site."
  type        = string
  default     = "app"
}

variable "api_host" {
  description = "Subdomain name for the API site."
  type        = string
  default     = "api"
}

variable "dns_ttl" {
  description = "TTL for the DNS records."
  type        = number
  default     = 300
}
