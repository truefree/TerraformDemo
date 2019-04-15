variable "amazon_linux" {
  #amazon linux w/ssd
  default="ami-d7abd1b8"
}

variable "dev_keyname" {
  default="2dal-dev"
}

resource "aws_key_pair" "deployer" {
  key_name = "2dal-dev"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCw76iyp3GxcnaIC66aHAQRH287QdXaPw1z1MIY9KbhtXbZjYZJU73IVBjbGHn4pk9lCgcKQnH42fGueLJpC6M9mpq6z2xL3Brh4CVXgfAvJbjAoOREtk7Ne/7b5cQ7ngoNOYqACgKMzLVQo4A2Hj77pB/aEX8d8tQImshp0Bub3Y216Un5fYNwpsuWAHiQ+S/Jn7qOGD2i/BjdknH2xA6v8M5quahKr8UB2eF2Yf7q+qbV7hWV2NYn4TI5Hj9iQRhnmJoTZwqjMYKlNueY6xEVTtkrQ7WQ0rJX401GiTYBvpGLniIdBBsMN6ouqweJVXWpYZnl2SPSnc4fJT7R5ear user22@cc-351ed1dd-6647bd664d-kh2h8"
}


variable "aws_access_key" {
  default="AKIA2NIBY3N5JUVDZEMI"
}

variable "aws_sercret_key" {
  default="wb5u4pRQDk4LRthj4lsIRnKa/2XAiG1rlqbgUaVy"
}