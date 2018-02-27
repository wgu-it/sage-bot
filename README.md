# Sage - Slack Bot

[![Build Status](https://travis-ci.org/wgu-it/sage-bot.svg?branch=master)](https://travis-ci.org/wgu-it/sage-bot)

## Development

Make sure you have [Elixir](https://elixir-lang.org/install.html) installed.

- `mix deps.get` to install dependencies
- `mix run --no-halt` to run the bot locally
- `mix test` to run the tests

**Please** make sure you have your [editorconfig plugin](http://editorconfig.org/#download) installed in the editor you are using (if a plugin is available).


## Adding Course Triggers

New courses are added to WGU all the time, so if you want to help keep this bot up-to-date, please contribute!

For very basic triggers, you can edit the [course-list](https://github.com/wgu-it/sage-bot/blob/master/lib/sage/support/course_list.ex). Observe and follow the existing format to add new courses.

## Adding Responders

Make a new responder module in `lib/sage/responders` and add it to the list of `:responders` in `config/config.exs`

```elixir
config :sage, Sage.Robot,
  adapter: Hedwig.Adapters.Slack,
  name: "sage",
  aka: "Sage",
  responders: [
    # ...
    {Sage.Responders.MyResponder, []},
  ]
```

**Don't forget** to make a new test for your responder in `test/responders`, like `Sage.Responders.MyResponderTest`
