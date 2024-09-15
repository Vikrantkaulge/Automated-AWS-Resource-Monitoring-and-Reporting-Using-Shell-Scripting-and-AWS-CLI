# Automated AWS Resource Monitoring and Reporting Using Shell Scripting and AWS CLI

This project monitors the usage of AWS resources (EC2, S3, Lambda, IAM users) and generates daily reports using shell scripting and AWS CLI. The script checks active EC2 instances, S3 bucket usage, Lambda functions, and the number of IAM users, and creates a report file.

## Prerequisites

- AWS Account with IAM access (Access Key and Secret Access Key).
- EC2 Instance with proper permissions (security groups, IAM role, etc.).
- AWS CLI installed on the EC2 instance.
- MobaXterm installed on your local machine.
- Key pair file (`.pem`) created while launching the EC2 instance.

## Steps to Set Up and Run the Project

### 1. Create an EC2 Instance

- Launch an EC2 instance using the AWS Management Console.
- Select the desired instance type, and ensure you create or use an existing key pair (`.pem` file) to access the instance.

### 2. Copy Public IP of the Instance

- Once the instance is running, copy the public IP address.

### 3. Open MobaXterm

- Open MobaXterm on your local machine.
- Click on the `Session` icon in the toolbar.

### 4. Connect to the EC2 Instance

- Select `SSH` as the session type.
- Paste the copied public IP address of your EC2 instance in the `Remote host` field.

### 5. Configure Key Pair in MobaXterm

- Go to the `Advanced SSH settings` tab.
- In the `Use private key` section, browse and select the `.pem` key pair file you created while launching the EC2 instance.

### 6. Connect to the EC2 Instance

- Click `OK` to start the SSH connection to the EC2 instance.

### 7. Verify AWS CLI and Bash Installation

- Once connected to the EC2 instance, verify if `AWS CLI` and `bash` are installed:
  ```bash
  aws --version
  bash --version
## Run the following command to configure the AWS CLI:
 - aws configure
- Enter your AWS Access Key ID, Secret Access Key, Default region name, and Default output format (e.g., json or text).
## Create a new file using vim:
- vim shellscript.sh 
- Copy the code from the repository and paste it into the shellscript.sh file. Save the file by pressing Esc followed by :wq.
## Check the Output
The script will generate a report file with the resource usage details (e.g., number of active EC2 instances, IAM users, etc.).

