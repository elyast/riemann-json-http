require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'find'

# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'

# Gemspec
gemspec = Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-json-http'

  s.name = 'riemann-json-http'
  s.version = '0.0.1'
  s.author = 'Lukasz Jastrzebski'
  s.email = 'lukasz.jastrzebski@nsn.com'
  s.homepage = 'https://github.com/elyast/riemann-json-http'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Collect stats for system service metrics over http as json documents and submits them to Riemann.'

  s.add_dependency 'riemann-tools', '>= 0.2.1'

  s.files = FileList['bin/*', 'README.md'].to_a
  s.executables |= Dir.entries('bin/')
  s.has_rdoc = false

  s.required_ruby_version = '>= 1.9.3'
end

Gem::PackageTask.new gemspec do |p|
end

RDoc::Task.new do |rd|
  rd.main = 'Riemann JSON over HTTP'
  rd.title = 'Riemann JSON over HTTP'
  rd.rdoc_dir = 'doc'
end
