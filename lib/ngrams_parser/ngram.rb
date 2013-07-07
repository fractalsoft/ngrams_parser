# coding: utf-8
module NgramsParser
  # Split word into ngrams
  #
  #   self.ngram("lorem", 2) #=> ["lo", "or", "re", "em", "m "]
  #   self.ngram("ipsum", 3) #=> ["ips", "psu", "sum", "um ", "m  "]
  def self.ngram(word, size)
    array = []
    word.split('').each_index do |index|
      text = word[index..index+size-1]
      array << text.ljust(size, ' ')
    end
    array
  end
end
