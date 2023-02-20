defmodule ImagePathBugAppWeb.DemoLive do
  use ImagePathBugAppWeb, :live_view

  @impl Phoenix.LiveView
  def mount(%{"slug" => slug}, _session, socket) do
    dbg(slug)
    socket = assign(socket, :slug, slug)
    {:ok, socket}
  end

  @impl Phoenix.LiveView
  def render(assigns) do
    ~H"""
    <div>
      <.link navigate={~p"/"}>Home</.link>
    </div>

    <div>
      Demo slug value: <%= inspect(@slug) %>
    </div>

    <div><img src="image.jpg" alt={@slug} /></div>
    """
  end
end
