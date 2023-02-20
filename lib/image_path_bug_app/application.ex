defmodule ImagePathBugApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ImagePathBugAppWeb.Telemetry,
      # Start the Ecto repository
      ImagePathBugApp.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: ImagePathBugApp.PubSub},
      # Start Finch
      {Finch, name: ImagePathBugApp.Finch},
      # Start the Endpoint (http/https)
      ImagePathBugAppWeb.Endpoint
      # Start a worker by calling: ImagePathBugApp.Worker.start_link(arg)
      # {ImagePathBugApp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ImagePathBugApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ImagePathBugAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
