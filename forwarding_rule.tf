resource "google_compute_forwarding_rule" "relay" {
  project               = var.project
  name                  = "${var.environment}-relay-${var.designation}"
  ip_protocol           = "TCP"
  backend_service       = google_compute_region_backend_service.relay.self_link
  ports                 = ["25"]
  load_balancing_scheme = "INTERNAL"
  subnetwork            = "projects/${var.subnetwork_project}/regions/${var.region}/subnetworks/${var.subnetwork}"
  }

resource "google_compute_forwarding_rule" "mta" {
  project               = var.project
  name                  = "${var.environment}-mta-${var.designation}"
  ip_protocol           = "TCP"
  backend_service       = google_compute_region_backend_service.mta.self_link
  ports                 = ["25"]
  load_balancing_scheme = "INTERNAL"
  subnetwork            = "projects/${var.subnetwork_project}/regions/${var.region}/subnetworks/${var.subnetwork}"
  }
