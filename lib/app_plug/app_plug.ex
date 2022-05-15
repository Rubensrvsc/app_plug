defmodule AppPlug.AppPlug do
  import Plug.Conn
  @moduledoc """
  Documentation for `AppPlug`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> AppPlug.hello()
      :world

  """
  def init(options), do: options

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Teste app plug\n")
  end
end
