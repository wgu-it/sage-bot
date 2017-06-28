# Sage - Slack Bot

[![Build Status](https://travis-ci.org/wgu-it/sage-bot.svg?branch=master)](https://travis-ci.org/wgu-it/sage-bot)

## Development

- `mix deps.get` to install dependencies
- `mix run --no-halt` to run the bot locally
- `mix test` to run the tests

**Please** make sure you have your [editorconfig plugin](http://editorconfig.org/#download) installed in the editor you are using (if a plugin is available).


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
