## Copyright 2020 Green River IT as described in LICENSE.txt distributed with this project on GitHub.  
## Start at https://github.com/KubeHostNet/  
    
module "vpc-peering-config-k8s-requestor" {
  source = "../module-vpc-peering-config/"
  region = "${var.k8s_peering_region}"
  access_key = "${var.k8s_peering_public_access_key}"

}

# Input variables to be fed in from .tfvars for security purposes
variable "k8s_peering_region" { }
variable "k8s_peering_public_access_key" { }
