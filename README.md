# Terraform_Print_Outputs
## Terraform: Create an S3 Bucket and VPC with Output Values

This project demonstrates how to use Terraform to provision core AWS infrastructure and display key resource information using output blocks.

The configuration creates:

- An Amazon S3 bucket

- An AWS Virtual Private Cloud (VPC)


After the resources are created, Terraform prints:

- The ARN of the S3 bucket

- The ID of the VPC

These values are useful for verification, automation, and for referencing resources in other Terraform configurations.
- Note: The example below was created using Visual Studio Code with the HashiCorp Terraform extension installed to provide syntax highlighting, validation, and Terraform workflow support.
## Terraform Configuration

Important:
S3 bucket names must be globally unique. Update the bucket name before applying.

<img width="1487" height="707" alt="image" src="https://github.com/user-attachments/assets/e726e6da-68ac-400d-a949-76d6c9a234a3" />

## How Terraform Interprets This

When Terraform processes this configuration:

- It detects the depends_on argument in the EC2 resource

- Terraform waits for the S3 bucket to finish creating

- Only after the bucket is complete does Terraform start the EC2 instance

Even though the EC2 instance does not directly reference the S3 bucket, the explicit dependency forces a sequential creation order.

## Why This Matters

Explicit dependencies help you:

- Control resource creation order

- Prevent race conditions

- Enforce operational or architectural requirements

- Handle edge cases where implicit dependencies are not possible
