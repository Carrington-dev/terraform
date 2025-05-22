variable "name" {
    default = "Mulalo"
    type = string
    description = "Name of the Repository Author"
}

variable "surname" {
    default = "Muleya"
    type = string
    description = "surname of the Repository Author"
}

variable "middle_name" {
    # This is also valid
}

output "middle_name_out" {
    value = var.middle_name
}