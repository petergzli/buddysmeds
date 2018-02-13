defmodule Buddysmeds.PageController do
  use Buddysmeds.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def about(conn, _params) do
    render conn, "about.html"
  end

  def gift(conn, _params) do
    render conn, "gift-information.html"
  end
end
