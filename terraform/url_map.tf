resource "google_compute_url_map" "cdn_url_map" {
  name            = "hibooks-nonfiction-cdn-url-map"
  description     = "CDN URL map to cdn_backend_bucket"
  default_service = google_compute_backend_bucket.cdn_backend_bucket.self_link
  project         = var.project_id


  host_rule {
    hosts        = ["*"]
    path_matcher = "path-matcher"
  }
  path_matcher {
    name            = "path-matcher"
    default_service = google_compute_backend_bucket.cdn_backend_bucket.self_link
  }
}