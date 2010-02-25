require File.dirname(__FILE__) + '/../spec_helper'

describe 'CustomTags' do
  dataset :pages

  describe '<r:strip>' do
    it 'Should remove whitespace at beginning and end of string' do
      tag = '<r:strip>Hello there    </r:strip>'

      expected = %{Hello there}
      pages(:home).should render(tag).as(expected)
    end
  end

  describe '<r:replace>' do
    it 'Should replace "what" with "with"' do
      tag = '<r:replace what=\'"\' with="&quot;">She said, "What?!"</r:replace>'

      expected = %{She said, &quot;What?!&quot;}
      pages(:home).should render(tag).as(expected)
    end
  end
end
