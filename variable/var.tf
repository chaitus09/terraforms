# declare a variable with value
variable "x" {
  default=100
}
# declare a variable without value
#variable "y" {}

output "x" {
  value = var.x
}
 # list
variable "y_list"
{
  default=[1,2,3]
}

output "y" {
  value =var.y_list
}

variable "z_map"
{
  default=
  {
    x=10,
    y=20
  }
}

output "z" {
  value =var.z_map
}
