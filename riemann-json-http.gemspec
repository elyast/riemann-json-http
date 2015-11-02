# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "riemann-json-http"
  spec.version       = "0.1.5"
  spec.authors       = ["Lukasz Jastrzebski"]
  spec.email         = ["lukasz.jastrzebski@gmail.com"]

  spec.summary       = %q{Exporting json documents to Riemann}
  spec.description   = %q{Collect stats for system service metrics over http as json documents and submits them to Riemann.}
  spec.homepage      = "https://github.com/elyast/riemann-json-http"
  spec.license       = "MIT"

  spec.add_dependency 'riemann-tools', '~> 0.2', '>= 0.2.1'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.has_rdoc = false

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
