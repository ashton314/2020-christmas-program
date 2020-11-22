defmodule ChristmasMusicWeb.PageController do
  @moduledoc """
  Controller for static pages: the landing page as well as the posts
  page.
  """

  use ChristmasMusicWeb, :controller

  def index(conn, _params) do
    render(assign(conn, :page_title, "Submission Guidelines"), "index.html")
  end
end
