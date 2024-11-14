require './lib/groupdocs_viewer_cloud/version'

Gem::Specification.new do |s|
  s.name        = 'groupdocs_viewer_cloud'
  s.version     = GroupDocsViewerCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.summary     = 'GroupDocs.Viewer Cloud Ruby SDK'
  s.description = 'Ruby gem for communicating with the GroupDocs.Viewer Cloud API'
  s.author      = 'GroupDocs'
  s.email       = 'support@groupdocs.cloud'
  s.homepage    = 'https://products.groupdocs.cloud/viewer/ruby'
  s.metadata    = { 'source_code_uri' => 'https://github.com/groupdocs-viewer-cloud/groupdocs-viewer-cloud-ruby' }

  s.add_runtime_dependency 'faraday', '~> 1.0'
  s.add_runtime_dependency 'addressable', '~> 2.8.0', '>= 2.8.0'
  
  s.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']
  s.required_ruby_version = '~> 2.7.4'
end
