/*---------------vpc variables---------------*/
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_enable_dns_support" {
  type    = bool
  default = true
}

variable "vpc_enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "vpc_name" {
  type    = string
  default = "ninja-vpc-01"
}
/*---------------subnet variables---------------*/
# variable "vpc_id" {
#   type    = string
# }
/*--------------- Public Subnets ---------------*/

variable "public_subnets_cidr" {
  description = "public subnet cidr block"
  type        = list(string)
  default     = ["10.0.2.0/24", "10.0.4.0/24"]

}

variable "public_subnets_az" {
  description = "public subnet availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}
variable "enable_map_public_ip_on_launch" {
  type    = bool
  default = true
}

variable "public_subnets_tags" {
  description = "public subnet tags"
  type        = list(map(string))
  default = [{
    "Name" = "ninja-pub-sub-01"
    }, {
    "Name" = "ninja-pub-sub-02"
  }]
}

/*--------------- Private Subnets ---------------*/

variable "private_subnets_cidr" {
  description = "private subnet cidr block"
  type        = list(string)
  default     = ["10.0.6.0/24", "10.0.8.0/24"]

}

variable "private_subnets_az" {
  description = "private subnet availability zones"
  type        = list(string)
  default     = ["us-west-1b", "us-west-1c"]

}

variable "private_subnets_tags" {
  description = "private subnet tags"
  type        = list(map(string))
  default = [{
    "Name" = "ninja-priv-sub-01"
    }, {
    "Name" = "ninja-priv-sub-02"
  }]
}

/*--------------- # Internet Gateway ---------------*/

variable "igw_name" {
  type    = string
  default = "ninja-igw-01"
}

/*--------------- # NAT Gateway ---------------*/

variable "nat_name" {
  type    = string
  default = "ninja-nat-01"
}

/*--------------- # Route Table ---------------*/

variable "pub_route_table_name" {
  type    = string
  default = "ninja-route-pub-01"
}

variable "pri_route_table_name" {
  type    = string
  default = "ninja-route-priv-01"
}

variable "existing_vpc_id" {
  type    = string
  default = "vpc-09e0f8a5b064ea2f4"
}

variable "existing_vpc_cidr" {
  type    = string
  default = "20.0.0.0/16"
}

variable "existing_rtb" {
  type    = string
  default = "rtb-0fbe6a2b3ec8e528c"
}
