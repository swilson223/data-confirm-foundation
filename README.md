# Data-Confirm-Modal

[![Gem Version](https://badge.fury.io/rb/data_confirm_modal.svg)](https://badge.fury.io/rb/data_confirm_modal)   ![](http://ruby-gem-downloads-badge.herokuapp.com/data_confirm_modal?type=total)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/swilson223/data-confirm-foundation/issues)

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

Add to your ```application.js``` as shown below:

```ruby
//= require jquery_ujs
//= require foundation
//= require data_confirm_modal -> Must be placed below jquery-ujs aside from that it dose not have to be below foundation
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

To add this directly to a ```link_to```, to customize one-off modals:
```ruby
<%= link_to 'some_link', your_path_here, :class => 'button', data: { confirm:
                                                                     { title: 'do you really want to do this?',
                                                                       body: 'it cant be undone, not even wishing will fix-it',
                                                                       prompt: 'type THIS to unlock the confirm button',
                                                                       password: 'THIS',
                                                                       ok: 'be gone with it',
                                                                       cancel: 'I may loose my job if I do this..'
                                                                     }
                                                                    } %>
```
Further Customizations:
```ruby
modal_class: custom css classes for the modal handling the confirmation

title: adds a custom modal title (the default is set to Are you sure?)
title_class: add css classes for styling the title

body: adds modal body text
body_class: custom css classes for styling the body

prompt: adds type ... to continue
password: this is what the user will use to unlock the continue button.

footer_class: custom css classes to style modal footer

ok: set the text to appear inside confirm button
ok_class: style the ok button and text with custom css

cancel: set the text to appear inside the cancel button
cancel_class: style the cancel button and text with custom css
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/swilson223/data_confirm_modal. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
