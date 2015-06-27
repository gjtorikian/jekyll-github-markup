require 'test_helper'

class JekyllGitHubMarkupMaliciousnessTest < Converter::JekyllGitHubMarkupTestCase
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
    not_real = Jekyll::Converters::GitHubMarkup.new override
    assert_raises(LoadError) { not_real.convert('http://www.github.com') }
  end

end
