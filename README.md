[![Stories in Ready](https://badge.waffle.io/fractalsoft/ngrams_parser.png)](http://waffle.io/fractalsoft/ngrams_parser)  
# NgramsParser [![Gem Version](https://badge.fury.io/rb/ngrams_parser.png)](http://badge.fury.io/rb/ngrams_parser) [![Build Status](https://travis-ci.org/fractalsoft/ngrams_parser.png)](https://travis-ci.org/fractalsoft/ngrams_parser) [![Dependency Status](https://gemnasium.com/fractalsoft/ngrams_parser.png)](https://gemnasium.com/fractalsoft/ngrams_parser) [![Coverage Status](https://coveralls.io/repos/fractalsoft/ngrams_parser/badge.png)](https://coveralls.io/r/fractalsoft/ngrams_parser)
[![endorse](https://api.coderwall.com/torrocus/endorsecount.png)](https://coderwall.com/torrocus)

N-gram is a contiguous sequence of n items from a given sequence of text or speech. The items are letters, but can be phonemes, syllables, words or base pairs according to the application. The n-grams typically are collected from a text or speech corpus.

## Installation

Add this line to your application's Gemfile:

    gem 'ngrams_parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ngrams_parser

## Usage

```ruby
# splits single word into ngrams
NgramsParser::ngram(word, size)

# splits given text into ngrams
NgramsParser::ngrams(text, size)
```

You can use ngrams method into String class:

```ruby
class String
  include NgramsParser::String
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
