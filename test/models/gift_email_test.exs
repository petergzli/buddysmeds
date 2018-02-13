defmodule Buddysmeds.GiftEmailTest do
  use Buddysmeds.ModelCase

  alias Buddysmeds.GiftEmail

  @valid_attrs %{content: "some content", email: "some email", first_name: "some first_name", last_name: "some last_name"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = GiftEmail.changeset(%GiftEmail{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = GiftEmail.changeset(%GiftEmail{}, @invalid_attrs)
    refute changeset.valid?
  end
end
