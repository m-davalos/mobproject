Gem::Specification.new do |s|
  s.name        = 'mobproject'
  s.version     = '0.0.1'
  s.date        = '2015-07-20'
  s.summary     = 'Creates a project directory to test mobile applications with Appium and Cucumber'
  s.description = 'Creates a project directory test iOS and Android mobile applications with Appium and Cucumber'
  s.authors     = ['Milton Davalos']
  s.email       = 'mdavalos@mobiquityinc.com'
  s.homepage    = 'https://github.com/m-davalos/mobproject'
  s.license       = 'Mobiquity, Inc.'
  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'require_all'
  s.add_dependency 'thor'
end