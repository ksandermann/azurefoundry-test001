# azure-hello-vm

Terraform workspace that deploys a public-facing Azure Linux VM running a hello-world web page.

## Files

- `main.tf` uses a single module entrypoint.
- `provider.tf` configures Azure provider authentication explicitly.
- `outputs.tf` exposes module outputs directly.
- `configfiles/` contains local artifacts loaded with `file()`.

## Usage

1. Update `configfiles/admin_ssh_key.pub` with your SSH public key.
2. Provide authentication values for:
   - `tenant_id`
   - `subscription_id`
   - `client_id`
   - `client_secret`
3. Run:

```bash
terraform init
terraform plan
terraform apply
```

After apply, open `hello_world_url` output in a browser.
