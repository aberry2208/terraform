resource "google_compute_health_check" "mail_check" {
	name                = "${var.environment}-mail-${var.designation}"
	check_interval_sec  = 5
	timeout_sec         = 2
	healthy_threshold   = 3
	unhealthy_threshold = 3
	project             = var.project

	 tcp_health_check {
		port              = "25"
		}
	}
