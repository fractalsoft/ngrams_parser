# coding: utf-8
require 'spec_helper'

describe NgramsParser do
  context ".ngram" do
    let(:klass) { NgramsParser }

    [
      {
        text: "Will's",
        digrams: ["Wi", "il", "ll", "l'", "'s", "s "],
        trigrams: ["Wil", "ill", "ll'", "l's", "'s ", "s  "],
      },
      {
        text: "činčilový",
        digrams: ["či", "in", "nč", "či", "il", "lo", "ov", "vý", "ý "],
        trigrams: ["čin", "inč", "nči", "čil", "ilo", "lov", "ový", "vý ", "ý  "]
      }
    ].each do |hash|
      text, bigrams, trigrams = hash.values

      it "split word '#{text}' into bigrams: #{bigrams}" do
        klass::ngram(text, 2).should eq(bigrams)
      end

      it "split word '#{text}' into trigrams: #{trigrams}" do
        klass::ngram(text, 3).should eq(trigrams)
      end
    end
  end
end
