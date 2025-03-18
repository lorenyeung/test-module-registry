resource "random_id" "this" {
  count = var.num_resources
  byte_length = 8
}
