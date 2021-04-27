# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dailymeal,
  ecto_repos: [Dailymeal.Repo]

# Configures the endpoint
config :dailymeal, DailymealWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TIsu2GOaKG+L47eEbQyYRfaYNHl6lFpiQCKOp+CfbELFeT6nS/v5lslepIHNAonj",
  render_errors: [view: DailymealWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Dailymeal.PubSub,
  live_view: [signing_salt: "wuQ+ZL/T"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
