require 'pry'

class String

  def sentence?
    self.include? "."
  end

  def question?
    self.include? "?"
  end

  def exclamation?
    self.include? "!"
  end

  def count_sentences
    arr = self.split(/[.?!]/)
    arr.reject!{
      |string| string == ""
    }
    p arr.length
  end
end