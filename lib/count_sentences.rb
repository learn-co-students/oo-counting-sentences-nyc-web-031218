require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    subsentences = []
    subsentence = ""
    self.each_char do |chr|
      if [".", "!", "?"].include?(chr)
        #do something
        subsentences << subsentence
        subsentence = ""
      else
        subsentence << chr
      end
    end
    subsentences.select! do |subsentence|
      subsentence.length > 1
    end
    subsentences.length
  end
end
