#Defining the AZs that I want to create the subnets (private-subnets)
variable "private_azs" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_id" {
  type = string
  default = "?"
}