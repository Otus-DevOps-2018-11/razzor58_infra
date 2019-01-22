terraform {
  backend "gcs" {
    bucket =  "sb-razzor58-prod"
    prefix = "prod"
  }
}