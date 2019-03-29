$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rswag3"
  s.version     = ENV['TRAVIS_TAG'] || '0.0.0'
  s.authors     = ["Evgeniy Koltsov"]
  s.email       = ["jetapahob@gmail.com"]
  s.homepage    = "https://github.com/Je33/rswag"
  s.summary     = "Swagger tooling for Rails API's"
  s.description = "Generate beautiful API documentation, including a UI to explore and test operations, directly from your rspec integration tests"
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*"] + [ "MIT-LICENSE" ]

  s.add_dependency 'rswag3-specs', ENV['TRAVIS_TAG'] || '0.0.0'
  s.add_dependency 'rswag3-api', ENV['TRAVIS_TAG'] || '0.0.0'
  s.add_dependency 'rswag3-ui', ENV['TRAVIS_TAG'] || '0.0.0'
end
