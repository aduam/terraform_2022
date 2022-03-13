
# Terraform modules task 2

## Instructions for create the infraestructure

- Firstable, you need to create a file `terraform.tfvars` with the variables in the `variables.tf` file in the root proyect.
- The file created previously you can put `cidr_vpc="10.0.0.0/16"` with that `cidr` the terraform is going to create 4 subnets.
- Then that is going to create 2 route tables, one public and one private.
- I'll also create NAT Gateway
- have to ssh keys for to do match with the key pairs
- Finally it is going to create a ec2 instance in a public subnet inside the vpc created previously.
- Before you run `terraform apply -var-file="terraform.tfvars"`, you need create a bucket with **tf-backend-alan** name, and a table in dynamoDB with **tf-state-alan** name and **LockID**.
- After that you can run `terraform apply -var-file="terraform.tfvars"`