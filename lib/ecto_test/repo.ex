defmodule EctoTest.Repo do
  use Ecto.Repo,
    otp_app: :ecto_test,
    adapter: Ecto.Adapters.SQLite3
end
