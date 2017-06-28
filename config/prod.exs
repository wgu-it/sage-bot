use Mix.Config

config :sage, Sage.Robot,
  adapter: Hedwig.Adapters.Slack,
  name: System.get_env("SLACK_BOT"),
  aka: System.get_env("SLACK_BOT_ALIAS"),
  token: System.get_env("SLACK_TOKEN")
