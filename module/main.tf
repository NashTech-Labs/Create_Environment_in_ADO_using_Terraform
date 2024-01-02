resource "azuredevops_project" "example" {
  name               = var.project_name_VV
  work_item_template = "Agile"
  version_control    = "Git"
  visibility         = "private"
  description        = "Managed by Terraform"
}

resource "azuredevops_environment" "example" {
  project_id = azuredevops_project.example.id
  name       = var.azuredevops_environment_name_VV
}