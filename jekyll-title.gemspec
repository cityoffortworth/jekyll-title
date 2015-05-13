Gem::Specification.new do |spec|

  spec.name          = 'jekyll-title'
  spec.version       = '0.0.1'
  spec.authors       = ['Greg Scott']
  spec.email         = ['me@gregoryjscott.com']
  spec.summary       = %q{Liquid filter for altering capitalization of Jekyll page titles.}
  spec.homepage      = 'https://github.com/cityoffortworth/jekyll-title'
  spec.license       = 'MIT'

  spec.files         = 'jekyll-title_filter.rb'
  spec.test_files    = 'jekyll-title_filter_test.rb'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'jekyll', '~> 2.5'

end
