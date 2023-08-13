#!/bin/bash

# argocd projects
kubectl apply --context sodeko-dta -n green-tst -f pipeline/argocd/project-green-tst.yaml
kubectl apply --context sodeko-dta -n green-acc -f pipeline/argocd/project-green-acc.yaml
kubectl apply --context sodeko-prd -n green-prd -f pipeline/argocd/project-green-prd.yaml

# app of the apps
kubectl apply --context sodeko-dta -n green-tst -f pipeline/argocd/app-of-apps-tst.yaml
kubectl apply --context sodeko-dta -n green-acc -f pipeline/argocd/app-of-apps-acc.yaml
kubectl apply --context sodeko-prd -n green-prd -f pipeline/argocd/app-of-apps-prd.yaml
