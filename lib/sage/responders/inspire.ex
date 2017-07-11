defmodule Sage.Responders.Inspire do
  use Sage.Responder
  require Logger

  @usage """
  `hedwig inspire me` - Responds with an inspirational image
  """
  respond ~r/inspire (?:me|(.+))$/i, msg do
    if msg.matches[1] do
      maybe_send msg, "#{msg.matches[1]}: #{fetch_img()}"
    else
      maybe_send msg, fetch_img()
    end
  end

  @doc """
  Fetch the image from inspirebot.me
  """
  @spec fetch_img() :: String.t
  def fetch_img do
    url = "http://inspirobot.me/api"
    opts = [params: [generate: true]]

    case HTTPoison.get(url, [], opts) do
      {:ok, %{status_code: 200, body: body}} ->
        body
      res ->
        Logger.warn inspect(res)
        "no ಠ_ಠ"
    end
  end
end
