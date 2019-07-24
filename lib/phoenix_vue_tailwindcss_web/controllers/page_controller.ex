defmodule PhoenixVueTailwindcssWeb.PageController do
  use PhoenixVueTailwindcssWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
