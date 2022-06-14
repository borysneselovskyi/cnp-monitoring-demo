#!/bin/bash

clear
echo -e  "\nInstallation Helm Repository, Postgres Operator, Prometheus and Grafana Pods...\n"
echo " 
# Install Helm repo
helm repo add cnp-sandbox https://enterprisedb.github.io/cnp-sandbox/
helm repo update
helm upgrade --install cnp-sandbox cnp-sandbox/cnp-sandbox
"
echo -e  ""
sleep 3

helm repo add cnp-sandbox https://enterprisedb.github.io/cnp-sandbox/
helm repo update
helm upgrade --install cnp-sandbox cnp-sandbox/cnp-sandbox
echo ""
