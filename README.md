# AWS-IaC
An example modular Terraform project to manage AWS resources that contains

- [Network](./networking/) Networking module to manage VPC, Security Groups and ACLs
- [EC2](./ec2/) EC2 module to manage EC2 instances

### Required variables

- **AWS_ACCESS_KEY_ID** AWS access key for Terraform
- **AWS_SECRET_ACCESS_KEY** (sensitive) AWS secret access key
- **environment** The environment we deploy to. It must be [dev | staging | test | prod]
- **prefix** Prefix to tag resources