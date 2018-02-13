defmodule Buddysmeds.GiftEmail do
  use Buddysmeds.Web, :model

  schema "gift_emails" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :content, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:first_name, :last_name, :email, :content])
    |> validate_required([:first_name, :last_name, :email, :content])
  end
end
