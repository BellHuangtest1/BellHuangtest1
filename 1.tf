vi alicloud-terraform-infra/disney_shdr_technology/stage/applications/tech-qa-app/security_groups.tf
 
resource "alicloud_security_group_rule" "appd-tcp-out12" {
type = "egress"
ip_protocol = "tcp"
nic_type = "intranet"
policy = "accept"
port_range = "90/90"
priority = "1"
security_group_id = "${alicloud_security_group.group.0.id}"
cidr_ip = "10.143.32.28/32"
} 

