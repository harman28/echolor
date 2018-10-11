Gem::Specification.new do |spec|
  spec.name          = 'echolor'
  spec.version       = '0.1.0'
  spec.authors       = ['Harman Singh']
  spec.email         = ['harman28@gmail.com']
  spec.summary       = 'echo, but with colour.'
  spec.description   = 'echo, with colour, built for your command line.'
  spec.homepage      = 'https://github.com/harman28/echolor'
  spec.license       = 'MIT'
  spec.bindir        = '.'
  spec.executables   = 'echolor'
  spec.require_paths = ['.']

  spec.add_dependency 'colorize', '~> 0.8.1'
end
