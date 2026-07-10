# azurefoundry-test001

Terraform workspaces in this repository are organized as independent directories under the repository root.

## Added workspace

- `azure-public-vm-hello-world/`: deploys a public-facing Ubuntu VM in Azure and installs NGINX that serves a hello-world page.
- `modules/azure_public_vm/`: reusable module used by the workspace.
