resource "aws_lb_target_group" "jenkins-App" {
  name     = "Assignment-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.vpc.id
}
