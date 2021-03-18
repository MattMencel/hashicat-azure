# If you are in a workshop...
# Do not delete this file!
# It's required to complete the Instruqt labs.

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.46.0"
    }
  }

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mmencel-training"
    workspaces {
      name = "hashicat-azure"
    }
  }
}