## Copyright 2020 Green River IT as described in LICENSE.txt distributed with this project on GitHub.  
## Start at https://github.com/KubeHostNet/  
    
module "vpc-peering-config-acm-acceptor" {
  source = "../module-vpc-peering-config"

  region = "${var.acm_peering_region}"
  access_key = "${var.acm_peering_public_access_key}"

}

variable "acm_peering_region" { }
variable "acm_peering_public_access_key" { }
