# ZlibBase64Urlsafe

Easily compress/decompress data for use in a query parameter.

This takes Base64 / Url Escaping a step further by compressing the payload before encoding the data.

These compression savings can make a big difference when sending larger pieces of data in a query parameter.

This gem has no dependencies outside of the ruby stdlib. Internally is uses inflate and deflate the same compression algorithm found in gzip.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "zlib_base64_urlsafe"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zlib_base64_urlsafe

## Usage

```ruby
require "zlib_base64_urlsafe"

ZlibBase64Urlsafe.encode("Hello, World!") # => "eNrzSM3JyddRCM8vyklRBAAfngRq"
ZlibBase64Urlsafe.decode("eNrzSM3JyddRCM8vyklRBAAfngRq") # => "Hello, World!"

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/arronmabrey/zlib_base64_urlsafe/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
