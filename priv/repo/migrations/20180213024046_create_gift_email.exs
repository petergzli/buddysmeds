defmodule Buddysmeds.Repo.Migrations.CreateGiftEmail do
  use Ecto.Migration

  def change do
    create table(:gift_emails) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :content, :string

      timestamps()
    end
  end
end
