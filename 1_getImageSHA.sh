#!/bin/bash
source ./setenv.sh 

docker pull nginx
docker tag nginx ${REGION}-docker.pkg.dev/${PROJECT_ID}/${REGISTRY_NAME}/nginx
#gcloud auth configure-docker ${REGION}-docker.pkg.dev
export SHA=$(docker push ${REGION}-docker.pkg.dev/${PROJECT_ID}/${REGISTRY_NAME}/nginx | grep digest: | cut -f3 -d" ")

