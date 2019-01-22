terraform {
  backend "gcs" {
    bucket =  "sb-razzor58-stage"
    prefix = "stage"
  }
}