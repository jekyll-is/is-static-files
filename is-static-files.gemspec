Gem::Specification.new do |s|
  s.name        = "is-static-files"
  s.version     = "0.8.0"
  s.summary     = "Custom StaticFile descendants for Jekyll"
  s.description = "Custom StaticFile descendants for Jekyll."
  s.authors     = ["Ivan Shikhalev"]
  s.email       = ["shikhalev@gmail.com"]
  s.files       = Dir["lib/**/*", "README.md", "LICENSE"]
  s.homepage    = "https://github.com/jekyll-is/is-static-files"
  s.license     = "GPL-3.0-or-later"

  s.required_ruby_version = "~> 3.4"

  s.add_dependency "jekyll", "~> 4.3"

  s.add_development_dependency "rspec", "~> 3.13"
  s.add_development_dependency "rake", "~> 13.3"
  s.add_development_dependency "simplecov", "~> 0.22.0"
end
