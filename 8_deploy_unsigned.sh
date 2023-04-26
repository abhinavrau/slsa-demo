#!/bin/bash
kubectl create deployment nginx \
    --image=nginx \
    -n test