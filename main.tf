resource "aws_instance" "lwlab" {
    ami="${var.image}"
    instance_type="${var.instancetype}"
    key_name="${var.key}"
    tags={
        Name="lab10062020"
    
    }
}

resource "aws_ebs_volume" "esb2" {
    availability_zone = "${aws_instance.lwlab.availability_zone}"
    size=1
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdd"
  volume_id   = "${aws_ebs_volume.esb2.id}"
  instance_id = "${aws_instance.lwlab.id}"
  #delete_on_termination="true"
}