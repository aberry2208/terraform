resource "google_compute_address" "externalip" {
  provider     = "google-beta"
  count 	     = var.number_of_mta
  name  	     = "${var.environment}-mail-${var.designation}-${count.index}"
  address_type = "EXTERNAL"
	project      = var.project
	labels	     = module.labels.labels
  lifecycle {
    #prevent_destroy = true
    }
  }