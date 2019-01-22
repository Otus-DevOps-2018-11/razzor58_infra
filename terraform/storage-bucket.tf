provider "google" {
  version = "1.4.0"
  project = "${var.project}"
  region = "${var.region}"
}
module "storage-bucket" {
  source = "SweetOps/storage-bucket/google"
  version = "0.1.1"
  # Имена поменяйте на другие
  name = [
    "sb-razzor58-stage",
    "sb-razzor58-prod"]
}
output storage-bucket_url {
  value = "${module.storage-bucket.url}"
}