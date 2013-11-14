# coding: utf-8
require 'spec_helper'

describe NgramsParser::String do
  # Testing class
  class String
    include NgramsParser::String
  end

  context '#ngrams' do
    it 'splits String into ngrams' do
      string = 'Lorem ipsum'
      bigrams = [
        'Lo', 'or', 're', 'em', 'm ',
        'ip', 'ps', 'su', 'um', 'm '
      ]
      trigrams = [
        'Lor', 'ore', 'rem', 'em ', 'm  ',
        'ips', 'psu', 'sum', 'um ', 'm  '
      ]
      quadgrams = [
        'Lore', 'orem', 'rem ', 'em  ', 'm   ',
        'ipsu', 'psum', 'sum ', 'um  ', 'm   '
      ]

      expect(string.ngrams(2)).to eq(bigrams)
      expect(string.ngrams(3)).to eq(trigrams)
      expect(string.ngrams(4)).to eq(quadgrams)
    end
  end
end
