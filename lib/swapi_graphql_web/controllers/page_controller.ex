defmodule SwapiGraphqlWeb.PageController do
  use SwapiGraphqlWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
