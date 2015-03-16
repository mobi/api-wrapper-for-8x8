# Api Wrapper For 8x8 phonesystem reporting api

Since 8x8 phone system api suck, and here is the ruby gem that act as the
api wrapper to make your life a little bit easier.

## Installation

Add this line to your application's Gemfile:

    gem 'ApiWrapperFor8x8'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ApiWrapperFor8x8

## Usage

###Setup
```ruby
@api_connection = ApiWrapperFor8x8::Connection.new({
    :username => 'foo', # your username for 8x8
    :password => 'bar'  # your password for 8x8
})
```
By default, ApiWrapperFor8x8 uses a URI for the API of:
```
https://na3.mycontactual.com/api
```
If your point-of-contact with 8x8 has given you a different address, like ```vcc-naX.8x8.com/api```, you can enter that as an optional argument at this step, too.

```ruby
@api_connection = ApiWrapperFor8x8::Connection.new({
    :username => 'foo',
    :password => 'bar'
}, "https://vcc-na10.8x8.com/api")
```

###Params for each call
Date range: it has to be a iso8601 format and a string with comma separated, Ex "#{(Time.now-3600*24).iso8601,Time.now.iso8601}"
Timezone: it need to be following: list_of_timezone[http://en.wikipedia.org/wiki/List_of_zoneinfo_time_zones], Ex. America/Los_Angeles
It has more params, which can be seen on 8x8 site[http://www.8x8.com/Support/BusinessSupport/Documentation/VirtualContactCenterDocumentation/VirtualContactCenterStats.aspx]

###Channel

Get a list of channels
```ruby
@api_connection.channel_list
```

Get a list of agents
```ruby
@api_connection.agent_list
```

Get a list of agent details
```ruby
@api_connection.agents_details({:d => 'YOUR DATE RANGE', :tz => 'YOUR TIMEZONE'}, {FILTER OPTIONS})
```

Get a list of interactions
```ruby
@api_connection.all_interactions
```

Get info on a specific interaction
```ruby
@api_connection.interaction_by_id(12345)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
