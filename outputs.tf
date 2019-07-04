output "relay_load_balancer_address" {
  value = google_compute_forwarding_rule.relay.ip_address
  }

output "mta_load_balancer_address" {
  value = google_compute_forwarding_rule.mta.ip_address
  }
