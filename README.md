# Skyp

[![Gem Version](https://badge.fury.io/rb/skyp.png)][gem]
[![Dependency Status](https://gemnasium.com/Domon/skyp.png)][gemnasium]
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/Domon/skyp/trend.png)][bitdeli]

[gem]: http://badge.fury.io/rb/skyp
[gemnasium]: https://gemnasium.com/Domon/skyp
[bitdeli]: https://bitdeli.com/free "Bitdeli Badge"

A command-line tool to search Skype history.


## Installation

Add this line to your application's `Gemfile`:

    gem 'skyp'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install skyp


## Usage

List recent chats:

    skyp chats

Search `TERM` in the chatroom `CHAT`:

    skyp search TERM -c CHAT


## Config

Please set your account (Skype Name) in `~/.skyp`.


## Platforms

Currently Skyp only works on Mac.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

Copyright (c) 2013 Chun-wei Kuo. See [LICENSE][] for details.

[LICENSE]: LICENSE

