defmodule AppPlug.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      {Plug.Cowboy, scheme: :http, plug: AppPlug.AppPlug, options: [port: 4001]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AppPlug.Supervisor]

    Logger.info("Starting application...")

    Supervisor.start_link(children, opts)
  end
end
