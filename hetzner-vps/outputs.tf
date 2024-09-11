output "vps_id" {
  value = hcloud_server.vps_server.id
}

output "vps_ipv4" {
  value = hcloud_server.vps_server.ipv4_address
}

output "vps_domain" {
  value = cloudflare_record.vps_record.hostname
}

output "vps_secondary_domain" {
  value      = cloudflare_record.vps_record_two[*].hostname
  depends_on = [ cloudflare_record.vps_record_two ]
}

output "vps_name" {
  value = hcloud_server.vps_server.name
}