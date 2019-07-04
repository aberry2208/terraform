resource "google_compute_instance_group" "relay" {
    name                      = "${var.environment}-relay-${var.designation}"
    zone                      = var.zone
    project                   = var.project
    instances = google_compute_instance.relay.*.self_link
    named_port {
        name                  = "smtp"
        port                  = 25
        }
    }

resource "google_compute_instance_group" "mta" {
    name                      = "${var.environment}-mta-${var.designation}"
    zone                      = var.zone
    project                   = var.project
    instances = google_compute_instance.mta.*.self_link
    named_port {
        name                  = "smtp"
        port                  = 25
        }
    }
