require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(/[.?!]/)
    array.reject! {|a| a.size == 0}
    array.size
  end
end