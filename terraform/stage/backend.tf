terraform {
  backend "gcs-stage" {
    bucket =  "sb-razzor58-stage"
    prefix = "stage"
  }
}
