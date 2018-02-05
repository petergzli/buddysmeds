defmodule Buddysmeds.ContactController do
  use Buddysmeds.Web, :controller

  def post_email(conn, %{"data" => email_params}) do
    IO.inspect(email_params)
    conn
        |> put_status(:created)
        |> render("show.json")
  end
end
