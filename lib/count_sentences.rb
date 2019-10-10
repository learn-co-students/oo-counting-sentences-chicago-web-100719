#require 'pry'

class String

  def sentence?
    self.end_with?('.') ? true : false
  end

  def question?
    self.end_with?('?') ? true : false
  end

  def exclamation?
    self.end_with?('!') ? true : false
  end

  def count_sentences
    if self.split(' ').empty?
      return 0
    else
      self.split(/[.?!] /).size
    end
  end

end