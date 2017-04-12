use Mix.Config

config :unf_swuber, UnfSwuber.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "unf-swuber.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Do not print debug messages in production
config :logger, level: :info


# Finally import the config/prod.secret.exs
# which should be versioned separately.
# import_config "prod.secret.exs"
# Configure secret_key_base for cookie-based session storage

# Configure your database
config :unf_swuber, UnfSwuber.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true
