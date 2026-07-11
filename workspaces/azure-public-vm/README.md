# azure-public-vm

Hello-world Terraform workspace for a public-facing Azure Linux VM.

## Usage

1. Create `terraform.tfvars` from `terraform.tfvars.example`.
1. Initialize and apply:

```bash
terraform init
terraform plan -out hello.plan
terraform apply hello.plan
```

After deployment, browse to `http://<public_ip_address>`.
