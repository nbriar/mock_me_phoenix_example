# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :mock_me_phoenix_example, MockMePhoenixExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zh22vL88g0vRfpYOdSymfXJqoHuf9MG3CTC0THFJf54VLBL9+Bv7NmpfJZt2Hwvg",
  render_errors: [view: MockMePhoenixExampleWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MockMePhoenixExample.PubSub,
  live_view: [signing_salt: "khGYlz87"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :mock_me_phoenix_example, swapi_url: "https://swapi.dev/api"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config("#{Mix.env()}.exs")
