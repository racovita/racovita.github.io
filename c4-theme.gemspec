# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "c4-theme"
  spec.version       = "0.1"
  spec.authors       = ["Corina Benesch, Calin Cascaval"]
  spec.email         = ["cascaval@acm.org"]

  spec.summary       = "A theme for the Racovita foundation"
  spec.homepage      = "https://github.com/racovita/racovita.github.io"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", ">= 3.7", "< 5.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.3"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.1"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.1"

  spec.add_development_dependency "bundler"
end
