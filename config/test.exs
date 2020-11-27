use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mock_me_phoenix_example, MockMePhoenixExampleWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :mock_me_phoenix_example, swapi_url: "http://localhost:9081/swapi"

# Define listening port for `MockMe` here
config :mock_me, port: 9081
