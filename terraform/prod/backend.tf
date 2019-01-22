terraform {
  backend "gcs-prod" {
    bucket =  "sb-razzor58-prod"
    prefix = "prod"
  }
}
