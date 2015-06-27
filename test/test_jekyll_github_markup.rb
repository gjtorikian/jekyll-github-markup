require 'test_helper'

class JekyllGitHubMarkupTest < Converter::JekyllGitHubMarkupTestCase
  def setup
    @markdown = Jekyll::Converters::GitHubMarkup.new config
  end

  def test_converts_markdown
    output = @markdown.convert('<http://www.github.com>')
    assert_equal output.strip, '<p><a href="http://www.github.com">http://www.github.com</a></p>'
  end

end
