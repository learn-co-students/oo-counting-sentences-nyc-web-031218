require 'pry'

class String

  def sentence?
  	self.include?(".")
  end

  def question?
  	self.include?("?")
  end

  def exclamation?
  	self.include?("!")
  end

  def count_sentences
  	sentences = self.split(/[.!?]/).delete_if{|w| w.size < 2}
  	sentences.count
	end 
end
