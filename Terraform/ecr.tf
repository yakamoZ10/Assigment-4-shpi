resource "aws_ecr_repository" "foo" {
  name                 = "ardin-assignment-4-workspace-group5"
  image_tag_mutability = "MUTABLE"
}