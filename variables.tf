#create private subnets in 3 AZs
variable "private_azs" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_id" {
  type = string
  default = "vpc-07846064f27eb2140"
}