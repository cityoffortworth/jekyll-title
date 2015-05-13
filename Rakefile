require 'rake/testtask'

Rake::TestTask.new do |test|
  test.libs << '.'
  test.test_files = ['jekyll-title_filter_test.rb']
  test.verbose = true
end

task :default => :test
