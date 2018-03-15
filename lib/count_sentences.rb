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
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
# example 2
def count_sentences
    self.split(/[.!?] /).length #using regex
    #it places all the punctuations we are looking for and if they ar followed
    #by a space it will split it at that point.
    # binding.pry
  end
