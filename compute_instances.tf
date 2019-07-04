resource "google_compute_instance" "relay" {
    count                         = var.number_of_relay
    name                          = "${var.environment}-relay-${var.designation}-${count.index}"
    project                       = var.project
    tags                          = var.tags
    zone                          = var.zone
    machine_type                  = var.machine_type
    boot_disk {
    		initialize_params {
    			image							      = data.google_compute_image.imagetouse.self_link
    			size 							      = var.disk_size
          type                    = var.disk_type
    			}
        auto_delete               = true
    	  }
    network_interface {
        subnetwork                = var.subnetwork
        subnetwork_project        = var.subnetwork_project
        }
    service_account {
      email = var.service_account
      scopes = var.service_account_scope
      }
    labels                        = module.labels.labels
    metadata 									    = merge(var.metadata,map("startup-script",file("${path.module}/startup_script/relay_startup_script"),"mta-load-balancer-address",google_compute_forwarding_rule.mta.ip_address,"mta-relay","relay"))
    lifecycle {
    	ignore_changes 					    = ["attached_disk"]
    	}
    }

resource "google_compute_instance" "mta" {
    count                         = var.number_of_mta
    name                          = "${var.environment}-mta-${var.designation}-${count.index}"
    project                       = var.project
    tags                          = var.tags
    zone                          = var.zone
    machine_type                  = var.machine_type
    boot_disk {
    		initialize_params {
    			image							      = data.google_compute_image.imagetouse.self_link
    			size 							      = var.disk_size
          type                    = var.disk_type
    			}
        auto_delete               = true
    	  }
    network_interface {
      subnetwork                  = var.subnetwork
      subnetwork_project          = var.subnetwork_project
      access_config {
        nat_ip                    = element(google_compute_address.externalip.*.address, count.index)
        }
      }
    service_account {
      email                       = var.service_account
      scopes                      = var.service_account_scope
      }
    labels                        = module.labels.labels
    metadata 									    = merge(var.metadata,map("startup-script",file("${path.module}/startup_script/relay_startup_script"),"mta-relay","mta"))
    lifecycle {
    	ignore_changes 					    = ["attached_disk"]
    	}
    }
