output "cluster_id" {
  value = aws_eks_cluster.rajuproject.id
}

output "node_group_id" {
  value = aws_eks_node_group.rajuproject.id
}

output "vpc_id" {
  value = aws_vpc.rajuproject_vpc.id
}

output "subnet_id" {
  value = aws_subnet.rajuproject_subnet[*].id
}
