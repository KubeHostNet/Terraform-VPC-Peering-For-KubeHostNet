## Copyright 2020 Green River IT as described in LICENSE.txt distributed with this project on GitHub.  
## Start at https://github.com/KubeHostNet/  
    
module "peering_connection" {
  source = "../module/"

  vpc_acceptor = "will-be-populated-by-automation"
  vpc_requestor = "will-be-populated-by-automation"
  region_requestor = "${var.k8s_region}"
  region_acceptor = "${var.ansible_region}"
  access_key_requestor = "${var.k8s_public_access_key}"
  access_key_acceptor = "${var.ansible_public_access_key}"

}

variable "k8s_public_access_key" { }
variable "k8s_region" { }
variable "ansible_public_access_key" { }
variable "ansible_region" { }

##Output variables
output "my_peering_connection_id" { value = "${module.peering_connection.my_peering_connection_id}" }
output "acceptor_vpc_id" { value = "${module.peering_connection.acceptor_vpc_id}" }
output "requestor_vpc_id" { value = "${module.peering_connection.requestor_vpc_id}" }
