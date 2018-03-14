require 'pry'

class String

  def sentence?(word = self)
    if word[-1] == "."
      true
    else
      false
    end
  end

  def question?(word = self)
    if word[-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?(word = self)
    if word[-1] == "!"
      true
    else
      false
    end
  end

  def count_sentences
    count = 0
    arr = self.split(" ")
    arr.each{|word|
      if sentence?(word) || question?(word) || exclamation?(word)
        count += 1
      end 
    }
    count
  end
end
