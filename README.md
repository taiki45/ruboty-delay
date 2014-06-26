# Ruboty::Delay
Execute ruboty commands after given seconds.

## Installation
Add this line to your ruboty's Gemfile:

    gem 'ruboty-delay'

## Usage
```
> ruboty delay 3 ruboty ping
# ...3 seconds after
pong
```

You can use ruboty as a timer combination with [ruboty-echo](https://github.com/taiki45/ruboty-echo).

```
> ruboty delay 1200 ruboty echo Finish 20 min period!
# ...20 minutes after
Finish 20 min period!
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/ruboty-delay/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
