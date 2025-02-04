<!-- This code sets up an Amazon EKS cluster with Fargate using Terraform. Here is an easy explanation of what it does and why. -->
<!-- What This Code Does -->
- AWS Provider Setup: Configures Terraform to use AWS in the us-east-1 region.

- Creates a Virtual Private Cloud (VPC)  with public and private subnets across different  Availability Zones for better reliability and organization.

- Creates roles and policies for EKS and Fargate to work securely. It also enables logging to CloudWatch for monitoring the cluster.

- Sets up an EKS cluster, a managed Kubernetes service, to run container applications.

- Configures EKS to use Fargate for running containers, removing the need to manage servers.

<!-- Why we need it -->
1. Terraform helps automate the creation and management of resources, making the process consistent and saving time.
2. Creating a VPC and subnets organizes and secures resources. Using different Availability Zones improves system reliability.
3. Assigning the right permissions (IAM roles and policies) ensures that only authorized services can access resources, enhancing security.
4. EKS manages Kubernetes, reducing the complexities of setting it up and maintaining it.
5. Fargate runs containers without needing to manage servers, saving from handling infrastructure and making scaling easier.
Cost and Savings

<!-- Using Fargate can save money by paying only for the compute resources used, instead of paying for EC2 instances that might not always be fully utilized. The estimated cost depends on compute and storage usage. For a small application, it might be around $30-50 per month, but it can vary based on usage. -->


