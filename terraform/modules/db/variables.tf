variable db_disk_image {
description = "Disk image for reddit db"
default = "reddit-db-base"
}

variable zone {
  description = "Region for app Image"
  default = "europe-west1-b"
}

variable public_key_path {
  description = "user public key for GCP"
}