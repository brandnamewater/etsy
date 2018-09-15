Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_V7XvVb3VQUkApf3ZhwFL1LHd'],
  :secret_key      => ENV['sk_test_uHNRReKn8miIk2BZbcOTVdm7']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
