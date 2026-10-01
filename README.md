# VPC1

## Terraform state backend

Terraform stores state in the S3 bucket `vpc1-terraform-state-956614409594-ap-south-1`
in `ap-south-1`, using S3 native state locking. This bucket has been created in
AWS account `956614409594` with versioning, AES256 default encryption, and Block
Public Access enabled. The Terraform identity needs access to the state object
and its `.tflock` lock object.

Initialize Terraform to use the remote backend. Use `-migrate-state` if moving
an existing local state file:

```sh
terraform init
# If migrating local state instead:
# terraform init -migrate-state
```
