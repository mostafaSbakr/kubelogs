#!/bin/bash

kubectl config use-context $1

pods=$(kubectl get pods -n $2 -o name)

GREEN=$'\e[0;32m'
RED=$'\e[0;31m'
NC=$'\e[0m'

for pod in $pods
do
    echo "${RED}pod logs${NC} ${GREEN}$pod${NC}"
    kubectl logs -n $2 $pod | grep -i $3
done