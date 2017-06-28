use Mix.Config

config :sage, Sage.Robot,
  adapter: Hedwig.Adapters.Test,
  name: "sage",
  aka: "Sage"

config :sage,
  trigger_char: "!",
  giphy_key: "dc6zaTOxFJmzC"
