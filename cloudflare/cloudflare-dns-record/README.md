<div align=center>
  <img src="../../public/cloudflare.png" height=100 />
</div>
<h1 align=center>Cloudflare DNS Record Module</h1>

### A Terraform module to create a new Cloudflare DNS record in a zone.

## Input Variables
- `cloudflare_zone` - The Zone ID for the Cloudflare zone
- `dns_record_name` - The DNS record name `e.g. home == home.<zone-name>`
- `dns_record_type` - The DNS record type (_default: 'A'_)
- `dns_record_content` - The IP address for the DNS record
- `dns_record_ttl` - The TTL for the DNS record (_default: 1 [Automatic]_)
- `dns_record_proxied` - Whether the DNS record will proxy data through Cloudflare (_default: false_)

## Usage
```hcl
module "dns" {
  source = "git::https://github.com/labs-home/terraform-modules.git//cloudflare/cloudflare-dns-record"

  cloudflare_zone    = "8djasdu9sdu80fsasu90sadu8fsa"
  dns_record_name    = "home"
  dns_record_type    = "A"
  dns_record_content = "1.1.1.1"
  dns_record_ttl     = 1
  dns_record_proxied = false
}
```

## Outputs
- `cloudflare_dns_record_zone_id` - The zone ID for the Cloudflare DNS zone
- `cloudflare_dns_record_zone_name` - The domain name for the DNS zone
- `cloudflare_dns_record_id` - The ID for the Cloudflare DNS record
- `cloudflare_dns_record_name` - The record name for the Cloudflare DNS record