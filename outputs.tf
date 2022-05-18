output "webhook_id" {
  description = "The CodePipeline webhook's ID"
  value       = join("", aws_codepipeline_webhook.webhook.*.id)
}

output "webhook_url" {
  description = "The CodePipeline webhook's URL. POST events to this endpoint to trigger the target"
  value       = local.webhook_url
  sensitive   = true
}


output "codepipeline_id" {
  description = "CodePipeline ID"
  value       = lookup(local.codepipeline_resource, "id", "")
}

output "codepipeline_arn" {
  description = "CodePipeline ARN"
  value       = lookup(local.codepipeline_resource, "arn", "")
}

output "codepipeline_resource" {
  description = "CodePipeline resource"
  value       = local.codepipeline_resource
}
