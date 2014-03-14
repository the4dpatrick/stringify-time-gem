StringifyTime
=============

StrigifyTime is a gem that is modeled after the Railscast episode 033's stringify time rails plugin. I have created this gem for convenience and practice.

[Blog Post](http://patrickperey.com/stringify-time-gem) @ [PatrickPerey.com](http://patrickperey.com)

## Installation

Add this line to your application's Gemfile:

    gem 'stringify-time'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stringify-time

## Usage

Within an the model add `stringify_time` passing in a symbol for the attribute you want aliased as a virtual attribute string.

    class Task < ActiveRecord::Base
      stringify_time :due_at
    end

This will create the `due_at_string` getter and setter methods within the Task model. You can then access this attribute in the views like so:

`_form.html.erb`

    <%= form_for @task do |f| %>
      ...
      <div class="field">
        <%= f.label :due_at_string %><br>
        <%= f.text_field :due_at_string %>
      </div>
      ...
    <% end %>

Your users are now able to type in the date into a text field instead of using the Rails' default `datetime_select` dropdowns.

You can then add a validation within the model using the `due_at_invalid?` method. `due_at_invalid?` returns true if there was an invalid input into the text field, ie an ArgumentError.

    def validate
      errors.add(:due_at, 'is invalid') if due_at_invalid?
end

## Contributing

1. Fork it ([http://github.com/the4dpatrick/stringify-time-gem](http://github.com/the4dpatrick/stringify-time-gem))
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
