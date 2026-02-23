variable "pm_user" {
  type        = string
  description = "Utilisateur Proxmox pour Terraform"
}

variable "pm_password" {
  type        = string
  description = "Mot de passe Proxmox pour Terraform"
  sensitive   = true
}

variable "vm_name" {
  type        = string
  description = "Nom de la VM à créer"
}

variable "vm_node" {
  type        = string
  description = "Nœud Proxmox cible"
  default     = "IaC"
}

variable "vm_cpu" {
  type        = number
  description = "Nombre de vCPU"
  default     = 2
}

variable "vm_memory" {
  type        = number
  description = "RAM en MB"
  default     = 2048
}

variable "vm_disk_size" {
  type        = string
  description = "Taille du disque (GB)"
  default     = "30G"
}

variable "vm_bridge" {
  type        = string
  description = "Bridge réseau Proxmox"
  default     = "vmbr0"
}

variable "vm_template" {
  type        = string
  description = "Nom du template à cloner"
  default     = "Ubun-Template"
}

variable "vm_storage" {
  type        = string
  description = "Nom du stockage pour le disque"
  default     = "local-lvm"
}
