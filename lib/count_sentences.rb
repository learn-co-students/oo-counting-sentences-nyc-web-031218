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
    arr = self.split(/(?<=[?.!])/)
    no_repeats = arr.select { |elements|
      elements.length > 1
    }
    return no_repeats.count
  end
end
