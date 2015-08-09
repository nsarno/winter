defmodule Winter.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :email, :string, null: false, index:
      add :password_digest, :string, null: false

      timestamps
    end

    create index(:users, [:email], unique: true)
  end
end
