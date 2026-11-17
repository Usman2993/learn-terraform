output "instances_info" {
  value = [
    for instance in aws_instance.roboshop : {
      id            = instance.id
      name          = instance.tags.Name
      public_ip     = instance.public_ip
      private_ip    = instance.private_ip
      instance_type = instance.instance_type
    }
  ]
}