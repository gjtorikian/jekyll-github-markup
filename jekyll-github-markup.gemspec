require File.expand_path '../lib/jekyll-github-markup/version', __FILE__

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-github-markup'
  spec.version       = Jekyll::GitHubMarkup::VERSION
  spec.authors       = ['Garen J. orikian']
  spec.email         = ['gjtorikian@gmail.com']
  spec.summary       = "Use GitHub's github-markup, in Jekyll!"
  spec.description   = "This is a custom Markdown processor for Jekyll 2.0 and above. It allows you to use GitHub's github-markup in your Jekyll projects. This means you can use Asciidoc, ReStructuredText, and more!"
  spec.homepage      = 'https://github.com/gjtorikian/jekyll-github-markup'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'jekyll', '>= 2.0'
  spec.add_dependency 'github-markup', '~> 1.3'

  spec.add_development_dependency 'bundler', '~> 1.4'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
