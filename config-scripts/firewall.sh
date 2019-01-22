#!/bin/bash
gcloud compute firewall-rules create default-puma-server \
    --action allow \
    --target-tags puma-server \
    --source-ranges 0.0.0.0/0 \
    --rules tcp:9292