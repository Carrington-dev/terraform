# Terraform Tutorials

## To print all logs

```bash
export TF_LOG=TRACE
```

## Basic Commands

```bash
terraform init 
# same as git init
```

## Dependencies (ssh)
```bash
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_git_key
```