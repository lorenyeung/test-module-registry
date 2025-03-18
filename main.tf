resource "random_id" "this" {
  count = var.num_resources
  byte_length = 8
}

resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo"
  }
}
