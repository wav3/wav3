# frozen_string_literal: true

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.include FactoryBot::Syntax::Methods

  config.before :suite do
    system 'yarn build --log-level=error', out: File::NULL
    system 'yarn build:css', out: File::NULL
  end

  config.before :each, type: :system do
    driven_by :rack_test
  end

  config.before :each, js: true, type: :system do
    Capybara.register_driver :headless_chrome do |app|
      options = Selenium::WebDriver::Chrome::Options.new args: %w[headless window-size=1400,1000]
      Capybara::Selenium::Driver.new app, browser: :chrome, options:
    end
    driven_by :headless_chrome
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
