# Terraform Configuration

[Terraform](https://www.terraform.io/) is an infrastructure-as-code software tool created by HashiCorp. It allows users to define and provision data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language (HCL), or optionally JSON.

## Installation

To install Terraform, refer to the [official Terraform installation guide](https://www.terraform.io/downloads.html).

## Configuration

After installing Terraform, configure it by following these steps:

1. **Update Configuration Files**: Open the following files in your Terraform project directory and update them according to your environment:

    - `main.tf`: This file contains the main configuration for your infrastructure.
    - `variables.tf`: This file defines variables used in your Terraform configuration.

2. **Update Credentials and Project Name**: Ensure that the following values are updated in the `variables.tf` file to match your environment:

    - `credential_path`: Update this value with the path to your cloud's credential JSON file.
    - `project_name`: Update this value with your project name.

## Execution

Once you've updated the configuration files, execute the following commands to apply your Terraform configuration:

1. `terraform init`: Initializes the Terraform configuration and downloads any necessary plugins.
2. `terraform plan`: Generates an execution plan showing what Terraform will do when you apply your configuration.
3. `terraform apply`: Applies your Terraform configuration, creating or modifying the infrastructure according to your configuration files.
