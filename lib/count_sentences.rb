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
    if self == ""
      return 0
    end

    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
