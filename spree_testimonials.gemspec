version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_testimonials'
  s.version     = version
  s.summary     = 'Testimonials (guestbook) for Spree shop'
  s.required_ruby_version = '>= 1.9.3'

  s.authors            = [%q{divineforest}, %q{Brice Sanchez}]
  # s.email             = 'david@loudthinking.com'
  s.homepage          = 'http://github.com/divineforest/spree_testimonials'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.3'

  s.add_development_dependency 'capybara', '~> 2.1.0'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'database_cleaner', '1.0.1'
  s.add_development_dependency 'rspec-rails',  '~> 2.12.0'
  s.add_development_dependency 'sqlite3'
end