defmodule ImagePathBugAppWeb.HomeLive do
  use ImagePathBugAppWeb, :live_view

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl Phoenix.LiveView
  def render(assigns) do
    ~H"""
    <ul>
      <li class="mb-8">
        <.link navigate={~p"/demo/apple/"}>Apple</.link>
      </li>
      <li>
        <.link navigate={~p"/demo/banana/"}>Banana</.link>
      </li>
    </ul>
    """
  end
end
