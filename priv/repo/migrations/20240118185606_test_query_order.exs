defmodule EctoTest.Repo.Migrations.TestQueryOrder do
  use Ecto.Migration

  @disable_ddl_transaction true

  def up do
    execute "pragma foreign_keys = off"
    execute "begin"
    execute """
      CREATE TABLE IF NOT EXISTS "foo2" ("id" INTEGER PRIMARY KEY AUTOINCREMENT, "inserted_at" TEXT NOT NULL, "updated_at" TEXT NOT NULL, new_col text)
    """
    execute "insert into foo2 select *, null from foo"
    execute "drop table foo"
    execute "alter table foo2 rename to foo"
    execute "commit"
    execute "pragma foreign_keys = on"
  end

  def down do
  end
end
