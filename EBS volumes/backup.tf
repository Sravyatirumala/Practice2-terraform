resource "aws_ebs_snapshot" "instance1_snapshot" {
  volume_id = "vol-0d20205c8a330f7c5"

  tags = {
    Name = "instance1-snapshot"
  }
}

resource "aws_ebs_volume" "snapvolume1" {
  availability_zone = "us-east-2a"
  snapshot_id = aws_ebs_snapshot.instance1_snapshot.id
  tags = {
    Name = "snapvolume1"
  }
}


resource "aws_volume_attachment" "ebs_attachment" {
  device_name = "/dev/xvdbb"
  volume_id   = aws_ebs_volume.snapvolume1.id
  instance_id = "i-02c21003d60147a98"
}
