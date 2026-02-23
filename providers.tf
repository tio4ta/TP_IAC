terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.2-rc04"
    }
  }

  required_version = ">= 1.5.0"
}

provider "proxmox" {
  pm_api_url      = "https://10.5.250.1:8006/api2/json"
  pm_user         = var.pm_user
  pm_password     = var.pm_password
  pm_tls_insecure = true
}
