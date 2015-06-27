require 'jekyll'
require 'liquid'

require 'minitest/autorun'

require 'jekyll-github-markup'

module Converter
  class JekyllGitHubMarkupTestCase < MiniTest::Test
    def config
      {
       'github-markup' => {
         'markup' => 'markdown'
       },
       'markdown' => 'GitHubMarkup'
      }
    end
  end
end
