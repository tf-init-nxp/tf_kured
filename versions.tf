terraform {
  required_version = ">= 1.1"
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.5.1"
    }
  }
}
