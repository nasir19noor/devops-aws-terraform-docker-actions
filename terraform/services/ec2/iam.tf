data "aws_partition" "current" {}

resource "aws_iam_role" "webapp" {

  name        = "webapp_ssm_role"
  description = "SSM Role for webapp Instance"

  assume_role_policy    = data.aws_iam_policy_document.assume_role_policy.json
  force_detach_policies = true

}

resource "aws_iam_role_policy_attachment" "this" {
  role       = aws_iam_role.webapp.name 
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "webapp" {
  role = aws_iam_role.webapp.name
  name        = "webapp_ssm_role"

  lifecycle {
    create_before_destroy = true
  }
}

data "aws_iam_policy_document" "assume_role_policy" {

  statement {
    sid     = "EC2AssumeRole"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.${data.aws_partition.current.dns_suffix}"]
    }
  }
}