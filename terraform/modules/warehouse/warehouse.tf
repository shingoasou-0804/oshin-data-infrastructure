resource "snowflake_warehouse" "develop_wh" {
  name                                = "DEV_WH"
  comment                             = "Development warehouse"
  warehouse_size                      = "xsmall"
  auto_resume                         = true
  auto_suspend                        = 60
  enable_query_acceleration           = false
  initially_suspended                 = true
  statement_queued_timeout_in_seconds = 300
  statement_timeout_in_seconds        = 600
  warehouse_type                      = "standard"
}
