resource "google_compute_disk" "relaydisks" {
  count   = "${length(var.additional_relay_disk_sizes) * var.number_of_relay}"
  name    = "${element(google_compute_instance.relay.*.name, ceil(count.index / length(var.additional_relay_disk_sizes)))}-disk-${count.index}"
  type    = "${var.disk_type}"
  zone    = "${var.zone}"
  size    = "${element(var.additional_relay_disk_sizes, count.index)}"
  project = "${var.project}"
  labels  = "${module.labels.labels}"
  }

resource "google_compute_disk" "mtadisks" {
  count   = "${length(var.additional_mta_disk_sizes) * var.number_of_mta}"
  name    = "${element(google_compute_instance.mta.*.name, ceil(count.index / length(var.additional_mta_disk_sizes)))}-disk-${count.index}"
  type    = "${var.disk_type}"
  zone    = "${var.zone}"
  size    = "${element(var.additional_mta_disk_sizes, count.index)}"
  project = "${var.project}"
  labels  = "${module.labels.labels}"
  }

resource "google_compute_attached_disk" "relaydisks" {
  count    = length(google_compute_disk.relaydisks)
  disk     = "${element(google_compute_disk.relaydisks.*.self_link, count.index)}"
  instance = element(google_compute_instance.relay.*.self_link, ceil(count.index / length(var.additional_relay_disk_sizes)))
  }

resource "google_compute_attached_disk" "mtadisks" {
  count    = length(google_compute_disk.mtadisks)
  disk     = "${element(google_compute_disk.mtadisks.*.self_link, count.index)}"
  instance = "${element(google_compute_instance.mta.*.self_link, ceil(count.index / length(var.additional_mta_disk_sizes)))}"
  }
