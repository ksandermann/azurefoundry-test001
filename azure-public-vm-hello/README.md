# Azure Public VM Hello World

This workspace deploys a public-facing Linux VM in Azure using the reusable module in this repository.

## Usage

1. Update `provider.tf` with your Azure tenant and subscription IDs.
1. Update `vm_admin_ssh_public_key` in `main.tf`.
1. Run Terraform:

```bash
terraform init
terraform plan
terraform apply
```
