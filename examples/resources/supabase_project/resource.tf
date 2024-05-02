resource "supabase_project" "test" {
  organization_id   = "continued-brown-smelt"
  name              = "foo"
  database_password = "bar"
  region            = "us-east-1"
  instance_size     = "micro"

  lifecycle {
    ignore_changes = [
      database_password,
      instance_size,
    ]
  }
}
