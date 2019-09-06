data "google_compute_image" "imagetouse" {
  family = var.disk_image_family
  project = var.disk_image_project
  }
