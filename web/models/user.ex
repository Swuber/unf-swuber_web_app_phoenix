defmodule UnfSwuber.User do
  use UnfSwuber.Web, :model

  schema "users" do
    field :n_number, :string
    field :phone_number, :string
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :rating, :float
    field :password_hash, :string
    field :tag_number, :string
    field :tag_color, :string
    field :is_admin, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:n_number, :phone_number, :email, :first_name, :last_name, :rating, :password_hash, :tag_number, :tag_color, :is_admin])
    |> validate_required([:n_number, :phone_number, :email, :first_name, :last_name, :rating, :password_hash, :tag_number, :tag_color, :is_admin])
  end
end
