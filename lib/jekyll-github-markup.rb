begin
  require 'awesome_print'
rescue LoadError; end

module Jekyll
  module Converters
    class GitHubMarkup < Converter
      safe true

      highlighter_prefix "\n"
      highlighter_suffix "\n"

      def initialize(config)
        require 'github/markup'
        @config = config
        @errors = []
      end

      def ensure_default_opts
        @config['github-markup']['markup'] ||= 'markdown'
      end

      def valid_markup?(markup)
        GitHub::Markup.markups.find { |m| m.regexp =~ markup }
      end

      def setup
        return if @setup
        unless @impl = valid_markup?(@config['github-markup']['markup'])
          fail LoadError, "Invalid Markup type: #{@config['github-markup']['markup']}"
        end

        @setup = true
      end

      def output_ext(ext)
        '.html'
      end

      def convert(content)
        setup
        @impl.render(content)
      end
    end
  end
end
