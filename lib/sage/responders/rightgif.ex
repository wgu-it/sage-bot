defmodule Sage.Responders.Rightgif do
  use Sage.Responder
  require Logger

  @trigger_char Config.get_env(:sage, :trigger_char, "!")

  @usage """
  `#{@trigger_char}gif <text>` - Respond with a relevant gif
  """
  hear ~r/^#{@trigger_char}(?:gif|animate)(?: me)? (.*)/i, msg do
    send msg, fetch_gif(msg.matches[1])
  end

  @usage """
  `hedwig gif me <text>` - Respond with a relevant gif
  """
  respond ~r/(?:gif|animate)(?: me)? (.*)/i, msg do
    send msg, fetch_gif(msg.matches[1])
  end

  @doc """
  Fetch the gif from RightGif
  """
  @spec fetch_gif(String.t) :: String.t
  def fetch_gif(query) do
    url = "https://rightgif.com/search/web"
    headers = [{"Content-Type", "application/json"}]
    body = Poison.encode! %{text: query}

    case HTTPoison.post(url, body, headers) do
      {:ok, %{status_code: 200, body: body}} ->
        res = Poison.decode!(body)
        res["url"]
      res ->
        Logger.warn inspect(res)
        # Soz, that's all I've got... ಥ_ಥ
        # Sage.Responders.Giphy.fetch_gif(query)
    end
  end
end
