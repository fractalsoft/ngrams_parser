# coding: utf-8
require 'spec_helper'

describe NgramsParser do
  context ".ngrams" do
    let(:klass) { NgramsParser }

    [
      {
        text: "Will will Will will Will's will to Will?",
        bigrams: [
          ["Wi", "il", "ll", "l ", "wi", "il", "ll", "l "],
          ["Wi", "il", "ll", "l ", "wi", "il", "ll", "l "],
          ["Wi", "il", "ll", "l'", "'s", "s ", "wi", "il", "ll", "l "],
          ["to", "o "],
          ["Wi", "il", "ll", "l "]
        ].flatten,
        trigrams: [
          ["Wil", "ill", "ll ","l  "],
          ["wil", "ill", "ll ", "l  "],
          ["Wil", "ill", "ll ","l  "],
          ["wil", "ill", "ll ", "l  "],
          ["Wil", "ill", "ll'","l's", "'s ", "s  "],
          ["wil", "ill", "ll ", "l  "],
          ["to ", "o  ", "Wil", "ill", "ll ", "l  "]
        ].flatten
      },
      {
        text: "Acht alte Ameisen aßen am Abend Ananas.",
        bigrams: [
          ["Ac", "ch", "ht", "t "],
          ["al", "lt", "te", "e "],
          ["Am", "me", "ei", "is", "se", "en", "n "],
          ["aß", "ße", "en", "n "],
          ["am", "m "],
          ["Ab", "be", "en", "nd", "d "],
          ["An", "na", "an", "na", "as", "s "]
        ].flatten,
        trigrams: [
          ["Ach", "cht", "ht ", "t  "],
          ["alt", "lte", "te ", "e  "],
          ["Ame", "mei", "eis", "ise", "sen", "en ", "n  "],
          ["aße", "ßen", "en ", "n  "],
          ["am ", "m  "],
          ["Abe", "ben", "end", "nd ", "d  "],
          ["Ana", "nan", "ana", "nas", "as ", "s  "]
        ].flatten
      },
      {
        text: "Ödögidöggi",
        bigrams: ["Öd", "dö", "ög", "gi", "id", "dö", "ög", "gg", "gi", "i "],
        trigrams: [
          ["Ödö", "dög", "ögi", "gid", "idö", "dög", "ögg", "ggi", "gi ", "i  "]
        ].flatten
      },
      {
        text: "Ćma ćmę ćmi.",
        bigrams: [
          ["Ćm", "ma", "a ", "ćm", "mę", "ę ", "ćm", "mi", "i "]
        ].flatten,
        trigrams: [
          ["Ćma", "ma ", "a  ", "ćmę", "mę ", "ę  ", "ćmi", "mi ", "i  "]
        ].flatten
      },
      {
        text: "Łzy złej zołzy",
        bigrams: [
          ["Łz", "zy", "y ", "zł", "łe", "ej", "j "],
          ["zo", "oł", "łz", "zy", "y "]
        ].flatten,
        trigrams: [
          ["Łzy", "zy ", "y  ", "złe", "łej", "ej ", "j  "],
          ["zoł", "ołz", "łzy", "zy ", "y  "]
        ].flatten
      },
      {
        text: "Żubr żuł żuchwą żurawinę.",
        bigrams: [
          ["Żu", "ub", "br", "r ", "żu", "uł", "ł "],
          ["żu", "uc", "ch", "hw", "wą", "ą "],
          ["żu", "ur", "ra", "aw", "wi", "in", "nę", "ę "]
        ].flatten,
        trigrams: [
          ["Żub", "ubr", "br ", "r  ", "żuł", "uł ", "ł  "],
          ["żuc", "uch", "chw", "hwą", "wą ", "ą  "],
          ["żur", "ura", "raw", "awi", "win", "inę", "nę ", "ę  "]
        ].flatten
      },
      {
        text: "Čistý s Čistou čistili činčilový čepec.",
        bigrams: [
          ["Či", "is", "st", "tý", "ý ", "s ", "Či", "is", "st", "to", "ou"],
          ["u ", "či", "is", "st", "ti", "il", "li", "i ", "či", "in", "nč"],
          ["či", "il", "lo", "ov", "vý", "ý ", "če", "ep", "pe", "ec", "c "]
        ].flatten,
        trigrams: [
          ["Čis", "ist", "stý", "tý ", "ý  ", "s  ", "Čis", "ist", "sto"],
          ["tou", "ou ", "u  ", "čis", "ist", "sti", "til", "ili", "li "],
          ["i  ", "čin", "inč", "nči", "čil", "ilo", "lov", "ový", "vý "],
          ["ý  ", "čep", "epe", "pec", "ec ", "c  "]
        ].flatten
      },
      {
        text: "99 bottles of beer on the wall,",
        bigrams: [
          ["bo", "ot", "tt", "tl", "le", "es", "s "],
          ["of", "f "],
          ["be", "ee", "er", "r "],
          ["on", "n "],
          ["th", "he", "e "],
          ["wa", "al", "ll", "l "]
        ].flatten,
        trigrams: [
          ["bot", "ott", "ttl", "tle", "les", "es ", "s  "],
          ["of ", "f  "],
          ["bee", "eer", "er ", "r  "],
          ["on ", "n  "],
          ["the", "he ", "e  "],
          ["wal", "all", "ll ", "l  "]
        ].flatten
      }
    ].each do |hash|
      text, bigrams, trigrams = hash.values

      it "split text '#{text}' into bigrams" do
        subject.ngrams(text, 2).should eq(bigrams)
      end

      it "split text '#{text}' into trigrams" do
        subject.ngrams(text, 3).should eq(trigrams)
      end
    end
  end
end
