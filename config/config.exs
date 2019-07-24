# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_vue_tailwindcss,
  ecto_repos: [PhoenixVueTailwindcss.Repo]

# Configures the endpoint
config :phoenix_vue_tailwindcss, PhoenixVueTailwindcssWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7onOsG+y+iL1AVaXFUtgUqOhTHrh18E9n7aEq7a1xfH4z3Ff6LhI+Y/8htY4sAWG",
  render_errors: [view: PhoenixVueTailwindcssWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixVueTailwindcss.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
