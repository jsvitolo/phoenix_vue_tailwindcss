defmodule PhoenixVueTailwindcssWeb.Router do
  use PhoenixVueTailwindcssWeb, :router

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

  scope "/", PhoenixVueTailwindcssWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixVueTailwindcssWeb do
  #   pipe_through :api
  # end
end
