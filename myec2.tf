resource "aws_instance" "web" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = lookup(var.instance_type,terraform.workspace)
}


variable "instance_type" {
  type = map
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.large"

  }

}
