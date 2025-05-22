# Terraform Variables

Terraform uses variables to make configurations flexible and reusable. Variables allow you to parameterize your code and manage different environments easily.

## Types of Variables

### 1. Local Variables

- **Defined using `locals` block.**
- **Scope:** Only available within the current module.
- **Usage:** Useful for intermediate values, expressions, or simplifying complex logic.

```hcl
locals {
    instance_type = "t2.micro"
    name_prefix   = "dev"
}
```

### 2. Input (Global) Variables

- **Defined using `variable` blocks.**
- **Scope:** Can be set from the command line, environment variables, or `.tfvars` files.
- **Usage:** Used to pass values into modules or root configuration.

```hcl
variable "region" {
    description = "The AWS region to deploy resources"
    type        = string
    default     = "us-west-2"
}
```

### 3. Output Variables

- **Defined using `output` blocks.**
- **Purpose:** Export values from a module or root configuration.

```hcl
output "instance_id" {
    value = aws_instance.example.id
}
```

## Setting Variable Values

- **Command line:** `terraform apply -var="region=us-east-1"`
- **Environment variable:** `TF_VAR_region=us-east-1`
- **Variable files:** `terraform.tfvars` or `*.auto.tfvars`

## Best Practices

- Use locals for computed values within a module.
- Use input variables for values that may change between deployments.
- Document variables with descriptions and types.

## Sensitive Variables

- **Mark variables as sensitive using `sensitive = true` in the variable block.**
- **Purpose:** Prevents Terraform from displaying sensitive values (like passwords or secrets) in logs and CLI output.

```hcl
variable "db_password" {
    description = "The database password"
    type        = string
    sensitive   = true
}
```

### Where Sensitive Values Appear

- Sensitive values are **hidden in Terraform plan and apply output**.
- They may still be **visible in state files** (`terraform.tfstate`), which are stored in plain text by default.
- **Protect state files** by using remote backends (like AWS S3 with encryption) and restricting access permissions.
- Avoid sharing or committing state files to version control.