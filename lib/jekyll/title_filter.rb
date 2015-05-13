require 'jekyll'

module Jekyll
  module TitleFilter

    def title(input)
      input.downcase!
      remove_whitespace_characters(input)
      capitalize_first_letters(input)
    end

    private

    def remove_whitespace_characters(input)
      input.gsub!(/\s+/, ' ')
    end

    def capitalize_first_letters(input)
      input.gsub!(/\b\w/){ $&.upcase }
    end

  end
end

Liquid::Template.register_filter(Jekyll::TitleFilter)
