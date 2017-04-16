defmodule UnfSwuber.UserTest do
  use UnfSwuber.ModelCase

  alias UnfSwuber.User

  @valid_attrs %{email: "some content", first_name: "some content", is_admin: true, last_name: "some content", n_number: "some content", password_hash: "some content", phone_number: "some content", rating: "120.5", tag_color: "some content", tag_number: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
