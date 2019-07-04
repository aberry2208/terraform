provider "google" {
	region = var.region
	version = "~> 2.7.0"
	}

provider "google-beta" {
	region = var.region
	}
