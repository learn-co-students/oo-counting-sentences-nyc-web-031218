require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if !self  == false
      self.split.size
    else
      0
    end

    if self.sentence? || self.question? || self.exclamation?
      sentences = self.split(/[.?!]/)
    end

#binding.pry
    if self == ""
      self.size
    else
      sentences.delete("")
      sentences.size
    end
  end

end
