#!/bin/bash
kubectl create deployment nginx \
    --image=${REGION}-docker.pkg.dev/${PROJECT_ID}/${REGISTRY_NAME}/nginx@${SHA} \
    -n test