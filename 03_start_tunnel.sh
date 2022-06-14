#!/bin/bash

kubectl port-forward svc/cnp-sandbox-grafana 3000:80 &
