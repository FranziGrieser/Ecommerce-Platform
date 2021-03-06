# frozen_string_literal: true

if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_nCKvRAhKIJuKuKuubIeBb7b6',
    secret_key: 'sk_test_bWHLozzhtMDDC0OyzCzRCGwz'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
