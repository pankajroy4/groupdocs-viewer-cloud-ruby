require './lib/groupdocs_viewer_cloud/version'

Gem::Specification.new do |spec|
  spec.name        = 'groupdocs_viewer_cloud'
  spec.version     = GroupDocsViewerCloud::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.author      = 'GroupDocs'
  spec.email       = 'support@groupdocs.cloud'
  spec.homepage    = 'https://www.groupdocs.cloud'
  spec.summary     = 'GroupDocs.Viewer Cloud Ruby SDK'
  spec.description = 'Ruby gem for communicating with the GroupDocs.Viewer Cloud API'
  spec.license     = 'MIT'

  spec.add_runtime_dependency 'faraday', '~> 0.14.0'
  spec.add_runtime_dependency 'mimemagic', '~> 0.3.2'
  spec.add_runtime_dependency 'addressable', '~> 2.5.2'
  
  spec.add_development_dependency 'groupdocs_storage_cloud', '~> 18.6', '>= 18.5'
  spec.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'

  spec.files         = Dir['lib/**/*.rb']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '~> 2.3'
end
