# Azure Kubernetes Service - Kured tool submodule

<!-- BEGIN_TF_DOCS -->
# Terraform Module to create AZ Resources

## Contributing
If you want to contribute to this repository, feel free to use our [pre-commit](https://pre-commit.com/) git hook configuration
which will help you automatically update and format some files for you by enforcing our Terraform code module best-practices.

## Usage


## Providers

| Name | Version |
|------|---------|
| helm | >= 2.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.kured](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_namespace | Create the namespace if it does not yet exist | `bool` | `true` | no |
| enable\_kured | Enable kured daemon on AKS cluster | `bool` | `true` | no |
| kured\_chart\_repository | Helm chart repository URL | `string` | `"https://kubereboot.github.io/charts"` | no |
| kured\_chart\_version | Version of the Helm chart | `string` | `"2.2.0"` | no |
| kured\_settings | Settings for kured helm chart <br /><br><pre><br>map(object({ <br /><br>  image.repository         = string <br /><br>  image.tag                = string <br /><br>  image.pullPolicy         = string <br /><br>  extraArgs.reboot-days    = string <br /><br>  extraArgs.start-time     = string <br /><br>  extraArgs.end-time       = string <br /><br>  extraArgs.time-zone      = string <br /><br>  rbac.create              = string <br /><br>  podSecurityPolicy.create = string <br /><br>  serviceAccount.create    = string <br /><br>  autolock.enabled         = string <br /><br>}))<br /><br></pre> | `map(string)` | `{}` | no |
| namespace | The namespace to install the release into | `string` | `"kured"` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | Namespace used for Kured |
| repository | repository used for Kured |
| version | Version used for Kured |
<!-- END_TF_DOCS -->
