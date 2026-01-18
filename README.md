
# Architecture Overview

The infrastructure created by this project includes:

- Custom AWS VPC
- Public Subnet with Internet Gateway
- Route Table and Association
- Security Group allowing SSH access
- EC2 instance deployed in the public subnet
- Remote Terraform state stored in S3

This project is intentionally kept linear and beginner-friendly while following real-world Terraform conventions.

---

# Repository Structure



terraform-aws-ec2-remote-state/
│
├── backend.tf          # Remote state configuration (S3)
├── providers.tf        # Terraform and AWS provider setup
├── variables.tf        # Input variables
├── terraform.tfvars    # Variable values
├── main.tf             # All AWS resources (VPC, EC2, SG, etc.)
├── outputs.tf          # Output values
├── README.md           # Project documentation
└── .gitignore          # Terraform ignored files

---

## ⚙️ Prerequisites

- Terraform >= 1.x
- AWS account
- AWS CLI configured with valid credentials
- An existing S3 bucket for remote state storage

---

# How to Use

### 1. Clone the repository
```bash
git clone https://github.com/<your-username>/terraform-aws-basic-ec2-remote-state.git
cd terraform-aws-basic-ec2-remote-state
````

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Review the execution plan

```bash
terraform plan
```

### 4. Apply the configuration

```bash
terraform apply
```

---

# Outputs

After successful deployment, Terraform will output:

* EC2 public IP address
* VPC ID
* Subnet ID

These outputs can be reused for further automation or integrations.

---

# Design Decisions

* All resources are defined in a single `main.tf` file for clarity and linear understanding.
* Remote state is used to follow Terraform best practices.
* Resource names are kept explicit and readable for learning and interview purposes.

---

# Cleanup

To destroy all created resources:

```bash
terraform destroy
```

---

# Note

* It can be extended into modules or multi-environment setups (dev/stage/prod).

---

