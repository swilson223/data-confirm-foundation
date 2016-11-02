# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'data_confirm_modal/version'

Gem::Specification.new do |spec|
  spec.name          = "data_confirm_modal"
  spec.version       = DataConfirmModal::VERSION
  spec.authors       = ["Shawn Wilson"]
  spec.email         = ["swilson@taurenltd.com"]

  spec.summary       = %q{A Gemmified version of algoragames/confirm-with-reveal plugin}
  spec.description   = %q{This gem was crated to simplify the way the end user installs this plugin into their Rails 4+ app.}
  spec.homepage      = "https://github.com/swilson223/data-confirm-foundation"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
