require "test_helper"

class JekyllGitHubMarkupTest < Converter::JekyllGitHubMarkupTestCase
  def setup
    @config = {
      'github-markup' => {
        'markup' => 'markdown'
      },
      'markdown' => 'GitHubMarkup'
    }
    @markdown = Jekyll::Converters::GitHubMarkup.new @config
  end

  def test_fail_when_passing_bad_markup
    override = @config.dup
    override['github-markup']['markup'] = 'not_real'
    markdown = Jekyll::Converters::GitHubMarkup.new override
    assert_raises(LoadError) { markdown.convert('http://www.github.com') }
  end

end
