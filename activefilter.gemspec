Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'activefilter'
  s.version      = '1.0.0'
  s.date         = '2019-08-02'
  s.summary      = 'Filter models for rails'
  s.description  = ''
  s.authors      = ['Diego P. Steiner']
  s.email        = 'diego.steiner@u041.ch'
  s.files        = Dir['MIT-LICENSE', 'README.md', 'lib/**/*']
  s.require_path = 'lib'
  s.homepage     = 'https://github.com/diegosteiner/activefilter'
  s.license      = 'MIT'

  s.add_dependency "activemodel"
  s.add_dependency "activesupport"
end
