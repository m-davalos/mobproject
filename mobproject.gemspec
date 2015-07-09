Gem::Specification.new do |s|
  s.name        = 'mobproject'
  s.version     = '0.0.0'
  s.date        = '2015-07-09'
  s.summary     = 'Creates a project directory to test mobile applications with Appium and Cucumber'
  s.description = 'Creates a project directory test iOS and Android mobile applications with Appium and Cucumber'
  s.authors     = ['Milton Davalos']
  s.email       = 'mdavalos@mobiquityinc.com'
  s.files       = ['lib/mobproject.rb', 'lib/mobproject/generators/project.rb', 'lib/mobproject/cli.rb']
  s.homepage    = 'https://github.com/m-davalos/mobproject'
  s.license       = 'Mobiquity, Inc.'
  s.add_development_dependency 'thor'
end