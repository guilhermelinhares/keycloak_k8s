locals {
  env = {

    dev = {
      name          = "dev"
      namespace     = "keycloak"
      prometheus_active = false
    }

    default = {
      name = "default"
    }
  }
  environmentvars = "${contains(keys(local.env), terraform.workspace)}" ? terraform.workspace : "default"
  workspace       = merge(local.env[terraform.workspace], local.env[local.environmentvars])
}
