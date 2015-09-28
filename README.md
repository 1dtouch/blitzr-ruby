# Blitzr Ruby Client 

A Ruby client for the [Blitzr API](http://api.blitzr.com/doc/).

## Installation

Add this line to your application's Gemfile:

    gem 'blitzr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blitzr

## Usage

This library is a Ruby client you can use to interact with the [Blitzr API](http://api.blitzr.com/doc/).

Here's a short example.

```ruby
require 'blitzr'

client = Blitzr::Client.new(api_key: 'YOUR_KEY')

# Get an artist biography
biography = client.artist.biography({slug: 'oxmo-puccino')
puts "Biography: %s (lang: %s)" % [biography.text, biography.lang]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/craftsmen/niland-blitzr-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
