# kuberise

Kuberise is an internal developer platform that install core apps into an empty kubernetes cluster and makes it ready to deploy custom services. Then developers also can use this platform to deploy their services to different environments.

## Installation

You need to have kubectl and helm commands installed in your local environment then use these commands to install and configure argocd. Then argocd will pull the code from the repository and deploy apps to the cluster.

```bash
cicd/scripts/install.sh <path to kubeconfig file> <Kubernetes context> <git repository token> <environment name> <project name>
```

example command for development, test, acceptance and production environments are:

development:
```
cicd/scripts/install.sh ~/.kube/minikube.yaml minikube-dev <token> dev project1
```

test:
```
cicd/scripts/install.sh ~/.kube/minikube.yaml minikube-tst <token> tst project1
```

acceptance:
```
cicd/scripts/install.sh ~/.kube/minikube.yaml minikube-acc <token> acc project1
```

production:
```
cicd/scripts/install.sh ~/.kube/minikube.yaml minikube-prd <token> prd project1
```
