practicename   = "FoodMe"
  type   = "Application"
  domain = "APM"
  policy_id       = newrelic_alert_policy.alert_policy.id
  name1            = "rudra_condition"
  type1            = "apm_app_metric"
  entities        = [data.newrelic_entity.my_app.application_id]
  metric          = "error_percentage"
  condition_scope = "application"
  duration      = 5
    operator      = "below"
    priority      = "critical"
    threshold     = "0.75"
    time_function = "all"
    account_id = 3931862
  name2 = "email-example"
  type2 = "EMAIL"
  key = "email"
    value = "rishurudrasingh@gmail.com,rishurudra06@gmail.com"
      account_id1 = 3931862
  name3 = "email-example"
  type3 = "EMAIL"
  destination_id = newrelic_notification_destination.foo.id
  product = "IINT"