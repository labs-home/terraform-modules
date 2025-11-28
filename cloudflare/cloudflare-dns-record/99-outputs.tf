output "cloudflare_dns_record_zone_id" {
  description = "The Zone ID of the Cloudflare DNS record"
  value       = cloudflare_dns_record.dns_record.zone_id
}

output "cloudflare_dns_record_zone_name" {
  description = "The Zone Name of the Cloudflare DNS record"
  value       = data.cloudflare_zone.zone.name
}

output "cloudflare_dns_record_id" {
  description = "The ID of the Cloudflare DNS record"
  value       = cloudflare_dns_record.dns_record.id
}

output "cloudflare_dns_record_name" {
  description = "The name of the Cloudflare DNS record"
  value       = cloudflare_dns_record.dns_record.name
}