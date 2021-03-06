defmodule Buddysmeds.Router do
  use Buddysmeds.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Buddysmeds do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/about", PageController, :about
    post "/contact",ContactController, :post_email
    get "/gifts", PageController, :gift
    post "/get-gift", GiftController, :post_data
  end

  # Other scopes may use custom stacks.
  # scope "/api", Buddysmeds do
  #   pipe_through :api
  # end
end
