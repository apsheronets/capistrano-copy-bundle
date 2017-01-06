$:.push File.expand_path('../lib', __FILE__)

require "capistrano-copy-bundle/version"

Gem::Specification.new do |s|
  s.name        = "capistrano-copy-bundle"
  s.version     = CapistranoCopyBundle::VERSION
  s.licenses    = ["LGPL"]
  s.authors     = ["Alexander Markov"]
  s.email       = ["apsheronets@gmail.com"]
  s.homepage    = "https://github.com/apsheronets/capistrano-copy-bundle"
  s.summary     = %q{Bundling all the gems locally and sending to remote server. For capistrano 3.x}
  s.description = %q{Bundling all the gems locally and sending to remote server. For capistrano 3.x}

  #s.files         = `git ls-files`.split
  s.files = Dir["{lib}/**/*"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split
  s.executables   = `git ls-files -- bin/*`.split.map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'capistrano', '~> 3.0'
end
