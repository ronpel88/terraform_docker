# download ghost image
module "image"{
  source = "./image"
  image = "${lookup(var.image)}"
}

# start the container
module "container" {
  source = "./container"
  image = "${module.image.image_out}"
  name = "${lookup(var.container_name)}"
  int_port = "${lookup(var.int_port)}"
  ext_port = "${lookup(var.ext_port)}"
}
