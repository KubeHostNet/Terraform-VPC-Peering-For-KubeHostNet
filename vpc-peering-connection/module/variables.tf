## Copyright 2020 Green River IT as described in LICENSE.txt distributed with this project on GitHub.  
## Start at https://github.com/KubeHostNet/  
    
# These variables will be passed into the module at launch.
variable "vpc_acceptor" { }
variable "vpc_requestor" { }
variable "region_requestor" { }
variable "region_acceptor" { }
variable "access_key_requestor" { }
variable "access_key_acceptor" { }

# These variables will be printed to the console after the peering connection has been created.
output "my_peering_connection_id" { value = "${aws_vpc_peering_connection.peer.id}" }
output "acceptor_vpc_id" { value = "${var.vpc_acceptor}" }
output "requestor_vpc_id" { value = "${var.vpc_requestor}" }
