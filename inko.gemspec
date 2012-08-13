# -*- encoding: utf-8 -*-
require File.expand_path('../lib/inko/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["rhysd"]
  gem.email         = ["lin90162@yahoo.co.jp"]
  gem.description   = %q{Inko(インコ) is Twitter-call-off client for MacOS X.}
  gem.summary       = %q{read-only? no, Inko is hear-only twitter-client for MacOS X using say command. Inko means parakeet in Japanese.}
  gem.homepage      = "https://github.com/rhysd/inko"
  gem.authors       =  ["rhysd"]

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "inko"
  gem.require_paths = ["lib"]
  gem.version       = Inko::VERSION
end
