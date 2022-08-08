resource "aws_security_group" "memo-sg" {
    name = "memo-sg"
    description = "HTTP/HTTPS from anywhere"
    vpc_id = "${var.vpc_id}"

    ingress {
        from_port = "80"
        to_port = "80"
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }

    ingress {
        from_port = "8080"
        to_port = "8080"
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}
