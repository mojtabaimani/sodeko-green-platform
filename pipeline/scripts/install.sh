#!/bin/bash

# argocd projects
kubectl apply --context sodeko-dta -f pipeline/argocd/project-green-tst.yaml
kubectl apply --context sodeko-dta -f pipeline/argocd/project-green-acc.yaml
kubectl apply --context sodeko-prd -f pipeline/argocd/project-green-prd.yaml

# app of the apps
kubectl apply --context sodeko-dta -f pipeline/argocd/app-of-apps-green-tst.yaml
kubectl apply --context sodeko-dta -f pipeline/argocd/app-of-apps-green-acc.yaml
kubectl apply --context sodeko-prd -f pipeline/argocd/app-of-apps-green-prd.yaml
