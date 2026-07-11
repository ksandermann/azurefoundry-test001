# azurefoundry-test001

Terraform hello-world example for Azure using a reusable module and a workspace layout.

## Structure

- `modules/azure_public_vm`: Reusable module that deploys a public Linux VM and required networking.
- `workspaces/dev`: Deployable development workspace that consumes the module.

## What it deploys

- Resource group
- Virtual network and subnet
- Network security group with inbound SSH (22) and HTTP (80)
- Public IP and network interface
- Linux virtual machine (Ubuntu 22.04 LTS)
- Cloud-init that installs nginx and serves a hello-world page

## Usage

1. Authenticate with Azure (`az login`) and select a subscription.
2. Go to the workspace:

   ```bash
   cd workspaces/dev
   ```

3. Copy example variables and set your SSH key:

   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

4. Initialize and plan:

   ```bash
   terraform init
   terraform plan
   ```

5. Apply:

   ```bash
   terraform apply
   ```

6. Retrieve outputs:

   ```bash
   terraform output public_ip_address
   ```
