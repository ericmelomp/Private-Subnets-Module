resource "aws_subnet" "private_subnets" {
  #create 3 private subnets in 3 AZs at once
  count             = length(var.private_azs)
  vpc_id            = var.vpc_id
  availability_zone = var.private_azs[count.index]
  cidr_block        = "172.31.${51 + count.index}.0/24"

  tags = {
    Name = "subnet-terraform"
    type = "private"
  }
}

