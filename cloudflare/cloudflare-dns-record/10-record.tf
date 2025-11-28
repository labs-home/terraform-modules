resource "cloudflare_dns_record" "dns_record" {
  zone_id = data.cloudflare_zone.zone.zone_id
  name    = "${var.dns_record_name}.${var.cloudflare_zone.name}"
  type    = var.dns_record_type
  ttl     = var.dns_record_ttl
  proxied = var.dns_record_proxied
  content = var.dns_record_content
}