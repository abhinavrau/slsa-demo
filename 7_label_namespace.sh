#!/bin/bash
kubectl create namespace test
kubectl label namespace test policy.sigstore.dev/include=true