defmodule UnfSwuber.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :n_number, :string
      add :phone_number, :string
      add :email, :string
      add :first_name, :string
      add :last_name, :string
      add :rating, :float
      add :password_hash, :string
      add :tag_number, :string
      add :tag_color, :string
      add :is_admin, :boolean, default: false, null: false

      timestamps()
    end

  end
end
