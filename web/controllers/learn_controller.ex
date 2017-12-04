defmodule Buddysmeds.LearnController do
  use Buddysmeds.Web, :controller

  def post_email(conn, %{"data" => email_params}) do
    conn
        |> put_status(:created)
        |> render("show.json")
  end
end
