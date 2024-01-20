import Config

config :ecto_test, EctoTest.Repo,
  database: "db.sqlite",
  pool_size: 1,
  foreign_keys: :on

config :ecto_test, ecto_repos: [EctoTest.Repo]
