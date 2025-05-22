In **Terraform**, if you want to **output the value of a variable**, you can use an `output` block.

### ✅ Basic Example

If you have a variable defined like this in `variables.tf`:

```hcl
variable "region" {
  default = "us-east-1"
}
```

You can create an output in `outputs.tf`:

```hcl
output "selected_region" {
  value = var.region
}
```

Then when you run:

```bash
terraform apply
```

You’ll see the output:

```
Outputs:

selected_region = "us-east-1"
```

---

### 📌 Optional Output with Description

```hcl
output "selected_region" {
  description = "The AWS region selected"
  value       = var.region
}
```

---

### 🛠 To Just Get the Output Value After Apply:

```bash
terraform output selected_region
```

Or all outputs:

```bash
terraform output
```

Let me know if your variable is coming from a module or needs to reference a resource instead.
