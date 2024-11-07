resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0c6e17b6efba619a0"]
  tags = {
    Name = var.instance_name
  }
}

variable "instance_name"{
}

output "ip_address"{
  value = aws_instance.instance.private_ip
}

# resource "aws_route53_record" "frontend" {
#   zone_id = "Z01735512UFOFLO7B90DS"
#   name    = "frontend.kndevops72.online"
#   type    = "A"
#   ttl     = "30"
#   records = [aws_instance.frontend.private_ip]
# }
