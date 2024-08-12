resource "kubernetes_namespace" "namespace" {
  metadata {
    name = local.workspace["namespace"]
  }
  depends_on = []
}


resource "helm_release" "keycloak" {
  namespace  = local.workspace["namespace"]
  name       = "keycloak"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "keycloak"
  timeout    = 700

  values = [templatefile("${path.module}/manifests/values.yaml",{
    prometheus_active = local.workspace["prometheus_active"]
  })]
  depends_on = [kubernetes_namespace.namespace]
}