resource "aws_eks_cluster" "main" {
  name     = "my-cluster"
  role_arn = aws_iam_role.eks.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.public[0].id,
      aws_subnet.public[1].id,
      aws_subnet.private[0].id,
      aws_subnet.private[1].id
    ]
  }

  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  depends_on = [
    aws_iam_role_policy_attachment.eks_attachment,
    aws_iam_role_policy_attachment.cloudwatch_policy_attachment  # Ensure CloudWatch policy is attached before cluster creation
  ]
}

resource "aws_eks_fargate_profile" "default" {
  cluster_name           = aws_eks_cluster.main.name
  pod_execution_role_arn = aws_iam_role.fargate_pod_execution.arn
  fargate_profile_name   = "fargate-profile" # fargate_profile_name attribute
  selector {
    namespace = "fargate-nc" 
  }

  depends_on = [aws_eks_cluster.main]
}
