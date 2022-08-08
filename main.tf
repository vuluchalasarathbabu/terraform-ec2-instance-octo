resource "aws_instance" "memo" {
  count = var.instance_count
  ami = "${var.ami}"
  # ami = ami-0de8a61575cdd8705 windows server ami
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = ["${aws_security_group.memo-sg.id}"]
  subnet_id= "${var.subnet_id}"
    tags = {
    Name  = "memo-${count.index + 1}"
  }

  root_block_device {
    volume_size = var.volume_size
  }
  user_data = filebase64(var.user_data)
}
