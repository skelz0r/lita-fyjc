Gem::Specification.new do |spec|
  spec.name          = "lita-fyjc"
  spec.version       = "0.1.1"
  spec.authors       = ["skelz0r"]
  spec.email         = ["skelz0r@gmail.com"]
  spec.description   = "Randomly sort a Fuck Yeah Jacques Chirac image."
  spec.summary       = "Randomly sort a Fuck Yeah Jacques Chirac image."
  spec.homepage      = ""
  spec.license       = ""
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
