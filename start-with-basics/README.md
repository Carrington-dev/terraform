## Terraform Providers

1. Providers are Public cloud Vendors, to which terraform Interact to create resources.
2. Terraform relies on plugins called "providers" to interact with cloud providers.
3. Terraform configurations must declare which providers they require so that
Terraform can install and use them.
4. Terraform Providers release is separate from Terraform release.
5. You can write your own Providers.
6. Terraform finds and Install Providers as you Initialize Terraform (using terraform init command).
7. As a Best Practice Providers should be versioned in your Terraform config files.

```bash
provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}
```