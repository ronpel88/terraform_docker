# download the docker image
resource "docker_image" "image_id" {
  mane = "${var.image}"
}
