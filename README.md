# DataConfirmModal

This Gem was designed as a simple solution to integrate https://github.com/agoragames/confirm-with-reveal into your rails 4+ Application. I have added some instructions on how to customize the modals below, however for full documentation on the original plugin please refer to the repo above.

Please note this gem is still in development, and will change continuously, please follow this page to keep current with updates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_confirm_modal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_confirm_modal

## Usage
### At Present This Gem is only compatible with Foundation Framework 5+

Add to your application.js like shown below:

```ruby
//= require jquery_ujs
//= require foundation
//= require data_confirm_modal
```

Add the following to the bottom of the page but above ```</html>``` that contains the modal you wish to modify:

With out forcing a user to type a "Password (that you define)" to continue
```ruby
<script>
  $(document).confirmWithReveal({
    ok: 'Proceed',
    cancel: 'Cancel'
  })
</script>
```

To force a user to type a password of your choosing to proceed with the action:

```ruby
<script>
  $(document).confirmWithReveal({
    password: 'DELETE'
    ok: 'Proceed',
    cancel: 'Cancel'
  })
</script>
```
To Be Continued... This should be enough to get you out of the gate!

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/swilson223/data_confirm_modal. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
