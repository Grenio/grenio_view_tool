
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "grenio_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "grenio_view_tool"
  spec.version       = GrenioViewTool::VERSION
  spec.authors       = ["Marcin Gren"]
  spec.email         = ["marrcin.gren@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails apps.}
  spec.homepage      = "https://somewebsite.com"
  spec.license       = "MIT"


  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
