variable project {
  description = "GCP Project ID"
}

variable region {
  description = "Region for Provider"
  default     = "europe-west1"
}

variable vm_region {
  description = "Region fo VM"
  default     = "europe-west1"
}

variable public_key_path {
  description = "user public key for GCP"
}

variable private_key_path {
  description = "user Privat key"
}

variable disk_image {
  description = "Disk image"
}
