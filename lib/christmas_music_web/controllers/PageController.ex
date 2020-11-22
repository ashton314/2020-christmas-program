defmodule ChristmasMusicWeb.PageController do
  @moduledoc """
  Controller for static pages: the landing page as well as the posts
  page.
  """

  use ChristmasMusicWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
