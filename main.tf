resource "proxmox_vm_qemu" "vm_iac" {
  name        = var.vm_name
  target_node = var.vm_node

  # Template à cloner
  clone      = var.vm_template
  full_clone = true

  # CPU / RAM (syntaxe v3 complète)
  cpu {
    cores = var.vm_cpu   # 2 cores
    type  = "host"       # Optimisé pour le host
  }
  memory  = var.vm_memory  # 2048 MB

  # Agent QEMU
  agent = 0

  # Type OS cloud-init
  os_type = "cloud-init"

  # Contrôleur SCSI
  scsihw = "virtio-scsi-pci"


  # Disque principal (syntaxe v3)
  disk {
    slot    = "scsi0"
    size    = var.vm_disk_size  # 20G
    type    = "disk"
    storage = var.vm_storage
    format = "raw"
  }

  # Réseau
  network {
    id     = "0"
    model  = "virtio"
    bridge = var.vm_bridge  # vmbr0
  }

  # Cloud-init : IP en DHCP
  ipconfig0 = "ip=dhcp"

  # Boot
  bootdisk = "scsi0"
  boot     = "order=scsi0;net0"

  # Serial console pour accès terminal Proxmox
  serial {
    id   = "0"
    type = "socket"
  }

  # VGA lié au serial pour console web
  vga {
    type = "serial0"
  }

}
