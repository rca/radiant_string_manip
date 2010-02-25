module CustomTags
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
end
