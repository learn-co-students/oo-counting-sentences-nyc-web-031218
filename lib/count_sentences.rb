
class String

  def sentence?
    return self[-1] == "."
  end

  def question?
    return self[-1] == "?"
  end

  def exclamation?
    return self[-1] == "!"
  end

  def count_sentences
    str = self.split(/[.!?]/)
    str.select! do |substr|
      !substr.empty?
    end
    return str.length
  end
end
