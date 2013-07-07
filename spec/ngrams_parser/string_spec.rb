require 'spec_helper'

describe NgramsParser::String do
  class String
    include NgramsParser::String
  end

  context "#ngrams" do
    it "splits String into ngrams" do
      string = "Lorem ipsum"
      bigrams = [
        "Lo", "or", "re", "em", "m ",
        "ip", "ps", "su", "um", "m "
      ]
      trigrams = [
        "Lor", "ore", "rem", "em ", "m  ",
        "ips", "psu", "sum", "um ", "m  "
      ]
      quadgrams = [
        "Lore", "orem", "rem ", "em  ", "m   ",
        "ipsu", "psum", "sum ", "um  ", "m   "
      ]

      string.ngrams(2).should eq(bigrams)
      string.ngrams(3).should eq(trigrams)
      string.ngrams(4).should eq(quadgrams)
    end
  end
end
