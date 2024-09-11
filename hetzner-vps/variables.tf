# Hetzner Variables
variable "node_type" {
  description = "Hetzner VPS node type"
  default     = "cx22"
}

variable "node_location" {
  description = "Hetzner VPS node datacenter location"
  default     = "nbg1"
}

variable "node_role" {
  description = "Hetzner VPS node role - shorthand"
}

variable "node_ipv4" {
  description = "Hetzner VPS node IPv4 enabled"
  default     = true
}

variable "node_bootstrap_script" {
  description = "Hetzner VPS node bootstrap script"
}

# Hetzner Firewall
variable "node_firewall_inbound_ports" {
  description = "Hetzner VPS node array of ports to open on Firewall"
  default     = [{
    port = "22"
    protocol = "tcp"
    source_ips = [ "0.0.0.0/0" ]
  }]
  type        = list(object({
    protocol   = string
    port       = string
    source_ips = list(string)
  }))
}

# Cloudflare Variables
variable "cloudflare_zone" {
  description = "Cloudflare domain zone"
  type        = string
}

variable "cloudflare_second_record" {
  description = "Cloudflare secondary record for VPS"
  default     = ""
  type        = string
}