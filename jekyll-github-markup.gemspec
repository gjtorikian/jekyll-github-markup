require File.expand_path '../lib/jekyll-github-markup/version', __FILE__

Gem::Specification.new do |gem|
  gem.name          = 'jekyll-github-markup'
  gem.version       = Jekyll::GitHubMarkup::VERSION
  gem.authors       = ['Garen J. Torikian']
  gem.email         = ['gjtorikian@gmail.com']
  gem.summary       = "Use GitHub's github-markup, in Jekyll!"
  gem.description   = "This is a custom Markdown processor for Jekyll 2.0 and above. It allows you to use GitHub's github-markup in your Jekyll projects. This means you can use Asciidoc, ReStructuredText, and more!"
  gem.homepage      = 'https://github.com/gjtorikian/jekyll-github-markup'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'jekyll', '>= 2.0'
  gem.add_dependency 'github-markup', '~> 1.3'

  gem.add_development_dependency 'bundler', '~> 1.4'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest', '~> 5.0'
  gem.add_development_dependency 'awesome_print'
end
