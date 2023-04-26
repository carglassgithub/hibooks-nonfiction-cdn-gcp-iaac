resource "google_compute_managed_ssl_certificate" "cdn_certificate" {
  project = var.project_id
  name = "hibooks-nonfiction-cdn-managed-certificate"

  managed {
    domains = [var.cdn_domain]
  }
}