output "publicip" {
  value = "${aws_instance.lwlab.public_ip}"
}

output "ebsdata" {

  value= "${aws_ebs_volume.esb2.id}"
}
