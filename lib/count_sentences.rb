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

    arr = self.split(/[?!.]/)
    count = arr.length
    arr.each{ |item|
      count -= 1 if item == ""

    }
    count

    



  end
end

string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
string.count_sentences
