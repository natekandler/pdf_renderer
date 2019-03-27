$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "pdf_renderer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "pdf_renderer"
  spec.version     = PdfRenderer::VERSION
  spec.authors     = ["Nate Kandler"]
  spec.email       = ["natekandler@gmail.com"]
  spec.homepage    = "http://localhost:3000"
  spec.summary     = "Summary of PdfRenderer."
  spec.description = "Description of PdfRenderer."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.2", ">= 5.2.2.1"
  spec.add_dependency "prawn", '~> 2.2', '>= 2.2.2'

  spec.add_development_dependency gem 'sqlite3', '~> 1.3.6'
end
