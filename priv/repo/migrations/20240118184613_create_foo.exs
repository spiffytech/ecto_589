defmodule EctoTest.Repo.Migrations.CreateFoo do
  use Ecto.Migration

  def change do
    create table(:foo) do
      timestamps(type: :utc_datetime)
    end

    create table(:bar) do
      add :foo_id, references(:foo, on_delete: :delete_all), null: false

      timestamps(type: :utc_datetime)
    end

    execute "insert into foo (inserted_at, updated_at) values (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);"

    execute "insert into bar (foo_id, inserted_at, updated_at) values (1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);"
  end
end
