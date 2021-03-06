module SponsorPay
  autoload :Request, 'sponsor_pay/request'
  autoload :Response, 'sponsor_pay/response'
  autoload :Query, 'sponsor_pay/query'
  autoload :Utils, 'sponsor_pay/utils'

  # Secret key you received from SponsorPay
  mattr_accessor :api_key

  # Path to configuration yaml file
  mattr_accessor :config_path

  # Address of the API host
  mattr_accessor :host
  @@host = "api.sponsorpay.com"

  # Relative path for this version of API
  mattr_accessor :path
  @@path = "/feed/v1/offers"

  # Format - json or xml
  mattr_accessor :format
  @@format = 'json'

  # The SponsorPay application ID for your application
  mattr_accessor :application_id

  # Locale used for the offer descriptions
  mattr_accessor :locale

  def self.setup
    yield(self)
  end

  class UnsupportedFormatError < StandardError
  end

end
