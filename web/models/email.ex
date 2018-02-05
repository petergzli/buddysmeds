defmodule Buddysmeds.Email do
  use Buddysmeds.Web, :model

  schema "emails" do
    field :recipient, :string
    field :subject, :string
    field :content, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ :empty) do
    struct
    |> cast(params, [:recipient])
    |> validate_required([:recipient])
  end
end
