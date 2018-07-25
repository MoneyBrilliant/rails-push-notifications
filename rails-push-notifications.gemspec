$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'rails-push-notifications/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'fcm-rails-push-notifications'
  s.version     = RailsPushNotifications::VERSION
  s.authors     = ['Santhu MS']
  s.email       = ['santhu.ms83@gmail.com']
  s.homepage    = 'https://github.com/santhums/rails-push-notifications'
  s.summary     = 'Professional iOS, Android and Windows Phone push notifications for Ruby on Rails'
  s.description = 'Rails gem to push notifications for iOS, Android and Windows Phone devices'

  s.files = Dir['{lib}/**/*'] + %w(MIT-LICENSE Rakefile README.md)

  s.test_files = Dir["spec/**/*"]
  s.require_paths = ["lib"]

  s.license = 'MIT'

  s.required_ruby_version = '>= 2.3.1'

  s.add_dependency 'rails', '>= 5.0'
  s.add_dependency 'fcm-ruby-push-notifications', '>= 1.2.1'

  s.add_development_dependency 'sqlite3', '~> 1.3'
  s.add_development_dependency 'rspec', '~> 3.2'
  s.add_development_dependency 'rspec-rails', '~> 3.0'
  s.add_development_dependency 'factory_girl', '~> 4.0'
  s.add_development_dependency 'generator_spec', '~> 0.9'
  s.add_development_dependency 'webmock', '~> 1.20'
end
