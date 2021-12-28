
// create VM
resource "yandex_compute_instance" "vm-1" {
  name        = "vm-1"
  description = "machines centos8 and ELK"
  platform_id = "standard-v3"
  zone        = "ru-central1-a"

  resources {
    cores         = 2
    memory        = 4
    core_fraction = 20
  }

  scheduling_policy {
    preemptible = true
  }

  service_account_id = "ajebqrig4tdl83m9qjjg"

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      //name        = "Centos 8"
      //description = "rout for Centos 8 yandex.cloud"
      image_id = "fd80s5atj1quloqfr00f"
    }
  }

  network_interface {
    subnet_id = "e9bfqgv5pnb45ubnkfni"
  }

  metadata = {
    serial-port-enable = 1
    ssh_keys           = "p_krylov:${file("id_rsa.pub")}"
    //user_data = "${file("meta.txt")}"
  }
}
