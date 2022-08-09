data "aws_ami" "this" {
  owners = [ "amazon", "aws-marketplace" ]
  most_recent = true

  filter {
    name = "name"

    values = [
      "amzn-ami-hvm-*-x86_64-gp2",
    ]
  }

  filter {
    name = "owner-alias"

    values = [
      "amazon"
    ]
  }
}
