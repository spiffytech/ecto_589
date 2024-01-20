defmodule EctoTest.Application do
  use Application

  def start(_type, _args) do
    children = [
      {EctoTest.Repo, []}
      # other children...
    ]

    opts = [strategy: :one_for_one, name: EctoTest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
