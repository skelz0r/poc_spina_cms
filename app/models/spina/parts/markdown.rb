require 'kramdown'
require 'kramdown-parser-gfm'

module Spina
  module Parts
    class Markdown < Base
      attr_json :raw, :text

      def content
        Kramdown::Document.new(raw, input: 'GFM').to_html
      end
    end
  end
end
