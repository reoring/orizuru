# Orizuru

Orizuru is a client library for the [Tsuru](https://github.com/tsuru/tsuru).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'orizuru'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install orizuru

## Usage

### Get application info

```ruby
require 'orizuru'
client = Orizuru.create('http://YOUR_TSURU_HOST', 'YOUR_TSURU_TOKEN')

app = client.app('application_name')
```

### Get applications

```ruby
require 'orizuru'
client = Orizuru.create('http://YOUR_TSURU_HOST', 'YOUR_TSURU_TOKEN')

client.apps.each do |app|
  p app.name
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/orizuru. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
