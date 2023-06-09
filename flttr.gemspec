# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','flttr','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'flttr'
  s.version = Flttr::VERSION
  s.author = 'Thomas Roovers'
  s.email = 'thomas@unlockagency.nl'
  s.homepage = 'http://unlockagency.nl'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A wrapper arround the Flutter CLI, making (flavored) platform specific configuration easier'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.extra_rdoc_files = ['README.rdoc','flttr.rdoc']
  s.rdoc_options << '--title' << 'flttr' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'flttr'
  s.add_development_dependency('rake','~> 0.9.2')
  s.add_development_dependency('rdoc', '~> 4.3')
  s.add_development_dependency('minitest', '~> 5.14')
  s.add_runtime_dependency('gli','~> 2.21.0')
  s.add_runtime_dependency('jwt','~> 2.7.0')
end
