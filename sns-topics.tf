provider "aws" {
  region     = "eu-west-1"
}

resource "aws_s3_bucket_object" "topic_foo_template" {
  bucket = "test-bucket-udz56m"
  key    = "topic_foo.template"
  source = "${path.cwd}/cfn/partials/topic_foo.template"
}

resource "aws_s3_bucket_object" "topic_bar_template" {
  bucket = "test-bucket-udz56m"
  key    = "topic_bar.template"
  source = "${path.cwd}/cfn/partials/topic_bar.template"
}

resource "aws_cloudformation_stack" "topics_stack" {
  name = "foo-bar-sns-stack"
  template_body = "${file("${path.cwd}/cfn/sns-topics.template")}"
}