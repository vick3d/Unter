require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Unter
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators.system_tests = nil
  
    config.generators do |g|
      g.test_framework :rspec
      g.view_specs false
      g.helper_specs false
      g.controller_specs false
      g.helper_specs false
      g.request_specs false
      g.feature_specs false
    end
  end
end
