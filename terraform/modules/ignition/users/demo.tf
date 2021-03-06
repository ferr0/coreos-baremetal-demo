data "ignition_user" "demo" {
  name                = "demo"
  ssh_authorized_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDiUK/yvxccxe5wMULw/n9t9go/txISnw8QOfsJCMKok4bZ5C/HdkPztIsBl+JYV03XCVj+3Bgi30XFvKD/O29i+QhmHeVrKX/ToXUxmrNVGC3q9yTRTG8BpWuJle55yUSdp9MV4E1V7wTIdwWnURI+3Rr4+8gInHFLs/748x5H3xo0Xy6/dPe+n7+spLSyrCz9+B5oNldXEdUMHTW//uZk88VsjwheQllcAdVTmCG77VQ+JSeqml0eiNdg6HIuyO/m5QW9QV+edyiBvzO45iw6cUhhNjzfjUKiL2vGm96oT/dXKu2KLec2U+zqTfa+U29aVL5jXxvsMtsYjZnJ2YqJ ubuntu@provisioner-1.infra.local"]
  groups              = ["sudo", "docker"]
}

output "demo" {
  value = "${data.ignition_user.demo.id}"
}
