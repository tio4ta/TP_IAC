output "vm_name" {
  description = "Nom de la VM créée"
  value       = proxmox_vm_qemu.vm_iac.name
}

output "vm_id" {
  description = "ID Proxmox de la VM"
  value       = proxmox_vm_qemu.vm_iac.vmid
}
