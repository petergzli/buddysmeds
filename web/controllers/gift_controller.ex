defmodule Buddysmeds.GiftController do
  use Buddysmeds.Web, :controller
  alias Buddysmeds.GiftEmail

  def post_data(conn, %{"data" => gift_params}) do
    changeset = GiftEmail.changeset(%GiftEmail{}, gift_params)
    case Repo.insert(changeset) do
      {:ok, gift_params} ->
        conn
        |> put_status(:created)
        |> render("show.json")
      {:error, changeset} ->
        conn
        |> put_status(:error)
        |> render("show.json")
     end
  end
end
