# encoding: utf-8

class String
  def split_all(content='')
    content = self if content.empty?
    content.split(/、|，|,|;|；|\ +|\||\r\n/) if content.class.eql? self.class
    #content.split(/[\p{Punctuation}\p{Symbol}]/) if content.class.eql? self.class
  end

  def to_search_string
    self.gsub(/[\p{Punctuation}\p{Symbol}]/, " ")                                                                                                          
  end
end
