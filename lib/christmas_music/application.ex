defmodule ChristmasMusic.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ChristmasMusic.Repo,
      # Start the Telemetry supervisor
      ChristmasMusicWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ChristmasMusic.PubSub},
      # Start the Endpoint (http/https)
      ChristmasMusicWeb.Endpoint
      # Start a worker by calling: ChristmasMusic.Worker.start_link(arg)
      # {ChristmasMusic.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ChristmasMusic.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ChristmasMusicWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
