defmodule Buddysmeds.ContactController do
  use Buddysmeds.Web, :controller
  alias Buddysmeds.Email

  def post_email(conn, %{"data" => email_params}) do
    changeset = Email.changeset(%Email{}, email_params)
    Buddysmeds.Mailer.my_welcome_email(email_params["recipient"])
    case Repo.insert(changeset) do
      {:ok, email_params} ->
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
