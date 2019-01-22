#!/bin/bash
gcloud compute instances create reddit-full-3 \
--image-family reddit-full \
--image-project infra-226315
