resource "aws_ecr_repository" "backend" {
  name                 = "backend"
  image_tag_mutability = "MUTABLE"  # позволяет перезаписывать тег latest
  force_delete         = true       # позволяет terraform destroy снести репозиторий вместе с образами
 
  image_scanning_configuration {
    scan_on_push = true  # ECR сканирует образы на CVE при каждом push
  }
 
  tags = {
    Name = "backend"
  }
}