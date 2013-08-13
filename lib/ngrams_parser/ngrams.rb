# coding: utf-8
require 'lexical_units'

# Parse given *text* into ngrams
module NgramsParser
  def self.ngrams(text, size)
    array = []
    LexicalUnits.words_without_digits(text).each do |word|
      array << ngram(word, size)
    end
    array.flatten
  end
end
