require 'jekyll/title_filter'
require 'minitest/autorun'

describe Jekyll::TitleFilter do

  let(:title_filter) { Object.new.extend(Jekyll::TitleFilter) }

  it 'fixes all upper case' do
    new_title = title_filter.title('THIS IS A TITLE')
    assert_equal 'This Is A Title', new_title
  end

  it 'fixes all lower case' do
    new_title = title_filter.title('this is a title')
    assert_equal 'This Is A Title', new_title
  end

  it 'fixes mixed case' do
    new_title = title_filter.title('ThIS is A titLe')
    assert_equal 'This Is A Title', new_title
  end

  it 'handles single quotes' do
    new_title = title_filter.title('this "is a" title')
    assert_equal 'This "Is A" Title', new_title
  end

  it 'handles double quotes' do
    new_title = title_filter.title("this 'is a' title")
    assert_equal "This 'Is A' Title", new_title
  end

  it 'renders' do
    template = Liquid::Template.parse("{{ 'THIS IS A TITLE' | title }}")
    assert_equal "This Is A Title", template.render
  end

end
