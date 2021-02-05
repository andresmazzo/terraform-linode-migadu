# --- MX Records
resource "linode_domain_record" "migadu-mx-1" {
  domain_id   = var.domain_id
  record_type = "MX"
  name        = ""
  priority    = "10"
  target      = "aspmx1.migadu.com"
}
resource "linode_domain_record" "migadu-mx-2" {
  domain_id   = var.domain_id
  record_type = "MX"
  name        = ""
  priority    = "20"
  target      = "aspmx2.migadu.com"
}

# --- CNAME Records
resource "linode_domain_record" "migadu-cname-1" {
  domain_id   = var.domain_id
  record_type = "CNAME"
  name        = "key1._domainkey"
  target      = "key1.${var.domain}._domainkey.migadu.com"
}
resource "linode_domain_record" "migadu-cname-2" {
  domain_id   = var.domain_id
  record_type = "CNAME"
  name        = "key2._domainkey"
  target      = "key2.${var.domain}._domainkey.migadu.com"
}
resource "linode_domain_record" "migadu-cname-3" {
  domain_id   = var.domain_id
  record_type = "CNAME"
  name        = "key3._domainkey"
  target      = "key3.${var.domain}._domainkey.migadu.com"
}

# --- TXT Records
resource "linode_domain_record" "migadu-txt-1" {
  domain_id   = var.domain_id
  record_type = "TXT"
  name        = ""
  target      = "hosted-email-verify=${var.verification_code}"
}
resource "linode_domain_record" "migadu-txt-2" {
  domain_id   = var.domain_id
  record_type = "TXT"
  name        = ""
  target      = "v=spf1 include:spf.migadu.com -all"
}
resource "linode_domain_record" "migadu-txt-3" {
  domain_id   = var.domain_id
  record_type = "TXT"
  name        = "_dmarc"
  target      = "v=DMARC1; p=quarantine;"
}