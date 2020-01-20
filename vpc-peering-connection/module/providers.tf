## Copyright 2020 Green River IT as described in LICENSE.txt distributed with this project on GitHub.  
## Start at https://github.com/KubeHostNet/  
      
provider "aws" {
  # Requester's credentials.
  region     = "${var.region_requestor}"
  access_key = "${var.access_key_requestor}"
}

provider "aws" {
  alias  = "peer"
  # Accepter's credentials.
  region     = "${var.region_acceptor}"
  access_key = "${var.access_key_acceptor}"
}

data "aws_caller_identity" "peer" {
  provider = "aws.peer"
}
