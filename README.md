# Project description
  Deployment Keycloak in development mode  </br>

### Prerequisite
```
Kubeconfig file to next providers

provider "kubectl" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

```

### Initialize Project
`tofu init`

### Workspace select

#### Developer
`tofu workspace new dev`


### Run project
`tofu apply`

