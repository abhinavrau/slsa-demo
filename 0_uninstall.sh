#!/bin/bash
kubectl delete deployment nginx -n test
kubectl delete ns test
kubectl delete clusterimagepolicy private-signed-images-cip
helm uninstall policy-controller -n cosign-system
kubectl delete ns cosign-system
docker image rm ${REGION}-docker.pkg.dev/${PROJECT_ID}/${REGISTRY_NAME}/nginx
docker image rm nginx

