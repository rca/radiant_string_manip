module StringManip
  include Radiant::Taggable

  desc "Replace whitespace at ends of string"
  tag "strip" do |tag|
    tag.expand.strip
  end

  desc "Replace a string with another"
  tag "replace" do |tag|
    what_re = Regexp.new(tag.attr['what'])
    tag.expand.gsub(what_re, tag.attr['with'])
  end

  desc "Escape characters not allowed in XML elements (currently &, <, >)"
  tag "simple_xml_escape" do |tag|
    expanded = tag.expand

    expanded = expanded.gsub(/&/, '&amp;')
    expanded = expanded.gsub(/</, '&lt;')
    expanded = expanded.gsub(/>/, '&gt;')

    expanded
  end
end
