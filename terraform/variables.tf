variable project {
  description = "GCP Project ID"
}

variable region {
  description = "Region for Provider"
  default = "europe-west1"
}

variable zone {
  description = "Region for app Image"
  default = "europe-west1"
}

variable vm_region {
  description = "Region fo VM"
  default = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used to connect to instance"
}

variable private_key_path {
  description = "user Privat key"
}

variable disk_image {
  description = "Disk image"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default = "reddit-db-base"
}