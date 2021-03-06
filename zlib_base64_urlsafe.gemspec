# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zlib_base64_urlsafe/version'

Gem::Specification.new do |spec|
  spec.name          = "zlib_base64_urlsafe"
  spec.version       = ZlibBase64Urlsafe::VERSION
  spec.authors       = ["Arron Mabrey"]
  spec.email         = ["arron@mabreys.com"]

  spec.summary       = %q{Easily compress/decompress data for use in a query parameter.}
  spec.description   = %q{Easily compress/decompress data for use in a query parameter.}
  spec.homepage      = "https://github.com/arronmabrey/zlib_base64_urlsafe"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0.0"
end
