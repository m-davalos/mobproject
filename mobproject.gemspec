Gem::Specification.new do |s|
  s.name        = 'mobproject'
  s.version     = '0.0.2'
  s.date        = '2015-07-20'
  s.summary     = 'Creates a project directory to test mobile and web applications with Appium/Selenium and Cucumber'
  s.description = 'Creates a project directory test iOS, Android mobile and Web applications with Appium/Selenium and Cucumber'
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