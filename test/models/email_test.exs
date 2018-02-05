defmodule Buddysmeds.EmailTest do
  use Buddysmeds.ModelCase

  alias Buddysmeds.Email

  @valid_attrs %{content: "some content", recipient: "some recipient", subject: "some subject"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Email.changeset(%Email{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Email.changeset(%Email{}, @invalid_attrs)
    refute changeset.valid?
  end
end
