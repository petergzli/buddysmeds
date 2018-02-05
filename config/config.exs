# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :buddysmeds,
  ecto_repos: [Buddysmeds.Repo]

config :buddysmeds,
 mailgun_domain: "https://api.mailgun.net/v3/buddysorganic.com",
 mailgun_key: "key-ee2e83ab68158ac42731accf8950161c"

# Configures the endpoint
config :buddysmeds, Buddysmeds.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zv4nvQPoO9OTov88QVwV4rr3nyxCmi7fceVEXLDONX9HK+tPFKTaujLEKKJcUaRL",
  render_errors: [view: Buddysmeds.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Buddysmeds.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
