defmodule ConmanData.PageController do
  use ConmanData.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
