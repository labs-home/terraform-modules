variable "cloudflare_zone" {
  description = "Cloudflare domain zone"
  type        = string
}

variable "dns_record_name" {
  description = "DNS record name"
  type        = string
}

variable "dns_record_type" {
  description = "DNS record type"
  type        = string
  default     = "A"
}

variable "dns_record_content" {
  description = "DNS record content"
  type        = string
}

variable "dns_record_ttl" {
  description = "DNS record TTL"
  type        = number
  default     = 1
}

variable "dns_record_proxied" {
  description = "Whether the DNS record is proxied through Cloudflare"
  type        = bool
  default     = false
}

