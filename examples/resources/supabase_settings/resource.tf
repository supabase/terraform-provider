resource "supabase_settings" "production" {
  project_ref = "mayuaycdtijbctgqbycg"

  database = jsonencode({
    statement_timeout = "10s"
  })

  api = jsonencode({
    db_schema            = "public,storage,graphql_public"
    db_extra_search_path = "public,extensions"
    max_rows             = 1000
  })

  auth = jsonencode({
    site_url = "http://localhost:3000"
  })
}
