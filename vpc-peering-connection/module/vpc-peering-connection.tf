## Copyright 2020 Green River IT as described in LICENSE.txt distributed with this project on GitHub.  
## Start at https://github.com/KubeHostNet/  
  
# Requester's side of the connection.
resource "aws_vpc_peering_connection" "peer" {
  #Requestor's vpc_id.  This will become a parameterized variable.  
  vpc_id        = "${var.vpc_requestor}"
  #Acceptor's vpc_id.  This will become a parameterized variable.  
  peer_vpc_id   = "${var.vpc_acceptor}"
  peer_owner_id = "${data.aws_caller_identity.peer.account_id}"
  peer_region   = "${var.region_acceptor}"
  auto_accept   = false

  tags = {
    Side = "Requester"
  }
}

# Accepter's side of the connection.
resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = "aws.peer"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.peer.id}"
  auto_accept               = true

  tags = {
    Side = "Accepter"
  }
}

