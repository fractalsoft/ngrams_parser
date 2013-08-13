# coding: utf-8

module NgramsParser
  # Use ngrams inside String class
  module String
    def ngrams(size)
      NgramsParser.ngrams(self, size)
    end
  end
end
