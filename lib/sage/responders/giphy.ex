defmodule Sage.Responders.Giphy do
  use Hedwig.Responder
  require Logger

  @trigger_char Config.get_env(:sage, :trigger_char, "!")

  @usage """
  #{@trigger_char}giphy <text> - Respond with a relevant gif
  """
  hear ~r/^#{@trigger_char}(?:giphy)(?: me)? (.*)/i, msg do
    send msg, fetch_gif(msg.matches[1])
  end

  @usage """
  hedwig giphy me <text> - Respond with a relevant gif
  """
  respond ~r/(?:giphy)(?: me)? (.*)/i, msg do
    send msg, fetch_gif(msg.matches[1])
  end

  @doc """
  Fetch the gif from Giphy
  """
  @spec fetch_gif(String.t) :: String.t
  def fetch_gif(query) do
    url = "http://api.giphy.com/v1/gifs/search"
    headers = [{"Content-Type", "application/json"}]
    opts = [
      params: [
        api_key: Config.get_env(:sage, :giphy_key, "dc6zaTOxFJmzC"),
        q: query,
      ]
    ]

    case HTTPoison.get(url, headers, opts) do
      {:ok, %{status_code: 200, body: body}} ->
        res = Poison.decode!(body)
        image = Enum.random(res["data"])
        image["images"]["original"]["url"]
      res ->
        Logger.warn inspect(res)
        "no gifs for you ಠ_ಠ"
    end
  end
end
