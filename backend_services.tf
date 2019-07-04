resource "google_compute_region_backend_service" "relay" {
    project                         = var.project
    name                            = "${var.environment}-relay-${var.designation}"
    protocol                        = "TCP"
    session_affinity                = "NONE"
    backend {
        group                       = google_compute_instance_group.relay.self_link
        }
    health_checks                   = [google_compute_health_check.mail_check.self_link]
    }

resource "google_compute_region_backend_service" "mta" {
    project                         = var.project
    name                            = "${var.environment}-mta-${var.designation}"
    protocol                        = "TCP"
    session_affinity                = "NONE"
    backend {
        group                       = google_compute_instance_group.mta.self_link
        }
    health_checks                   = [google_compute_health_check.mail_check.self_link]
    }
