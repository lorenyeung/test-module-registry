resource "time_sleep" "service_setup" {
  depends_on = [
    harness_platform_service.services
  ]

  create_duration  = "30s"
  destroy_duration = "30s"
}

resource "harness_platform_service" "services" {
  # [Required] (String) Unique identifier of the resource.
  identifier = local.fmt_identifier
  # [Required] (String) Name of the resource.
  name = var.name
  # [Required] (String) Unique identifier of the organization.
  org_id = var.organization_id
  # [Required] (String) Unique identifier of the project.
  project_id = var.project_id

  # [Required] (String) YAML of the pipeline.
  yaml = local.yaml_payload

  # [Optional] (String) Description of the resource.
  description = var.description

  # [Optional] (String) Enable this flag for force deletion of service
  force_delete = var.force_delete

  # [Optional] (Set of String) Tags to associate with the resource.
  tags = local.common_tags_tuple
}
