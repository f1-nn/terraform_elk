// Configure the Yandex.Cloud provider
terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }
  }
}

provider "yandex" {
  token     = "AQAAAAAg1ezSAATuwXj1zYpMVk6glOMyUEmIei4"
  cloud_id  = "b1gtp0doq5g1t28951i9"
  folder_id = "b1gllp5tcpgdosk5isba"
  zone      = "ru-central1-a"
}
