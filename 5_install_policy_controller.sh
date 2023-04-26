#!/bin/bash
helm repo add sigstore https://sigstore.github.io/helm-charts
helm repo update
helm install policy-controller \
    -n cosign-system sigstore/policy-controller \
    --create-namespace
    
# Wait for pods

    