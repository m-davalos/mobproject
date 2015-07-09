Gem::Specification.new do |s|
  s.name        = 'mobproject'
  s.version     = '0.0.1'
  s.date        = '2015-07-09'
  s.summary     = 'Creates a project directory to test mobile applications with Appium and Cucumber'
  s.description = 'Creates a project directory test iOS and Android mobile applications with Appium and Cucumber'
  s.authors     = ['Milton Davalos']
  s.email       = 'mdavalos@mobiquityinc.com'
  s.homepage    = 'https://github.com/m-davalos/mobproject'
  s.license       = 'Mobiquity, Inc.'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'require_all'
  s.add_dependency 'thor'
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end