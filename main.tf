terraform {
  cloud {
    organization = "luces-apply-limits"
    hostname = "app.staging.terraform.io"
    workspaces {
      name = "random-null-resources-vcs"
    }
  }
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    } 
  }
}

provider "null" {
  alias = "foo"
}

variable "username" {
  type = string
  default = "uturunku1"
}

# resource "random_pet" "always_new_name" {
#   keepers = {
#     uuid = uuid() # Force a new name each time
#   }
#   length = 3
# }

# resource "random_uuid" "test" {
# }
# resource "random_uuid" "test2" {
# }

# resource "null_resource" "username" {
#   triggers = {
#     # Generate a new username each time we switch the value of the variable username
#     username = var.username
#   }
# }

# resource "null_resource" "random_uuid" {
#   triggers = {
#     # Generate a new username each time we switch the value of the variable username
#     username = "${random_uuid.test.result}-rg"
#   }
# }