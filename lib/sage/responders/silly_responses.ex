defmodule Sage.Responders.SillyResponses do
  @moduledoc false
  use Sage.Responder
  require Logger

  @usage """
  hedwig slap <target> - slaps <target> around a bit with a large trout
  """
  respond ~r/slap (?:me|([^\s]+))\s*$/i, msg do
    target = Map.get(msg.matches, 1, get_username(msg.user))
    size = Enum.random(["laughably tiny", "small", "medium-sized", "large", "ridiculously huge"])
    fish = Enum.random(["trout", "lamprey", "tuna", "arctic char", "clown goby"])
    if Regex.match?(~r/^bubo$/i, target) do
      reply msg, "I don't think so ಠ_ಠ"
    else
      maybe_send msg, "_slaps #{target} around a bit with a #{size} #{fish}_"
    end
  end

  @usage """
  bubo flip [a coin] - Flips a coin
  """
  respond ~r/flip( a coin)?\s*$/, msg do
    coin = Enum.random(["*heads*", "*tails*"])
    send msg, "I flipped a coin for #{get_username(msg.user)} and it landed #{coin}!"
  end

  hear ~r/^just do it(?:,? ([^\s]+))?\s*/, msg do
    if msg.matches[1] do
      send msg, "#{msg.matches[1]}: https://www.youtube.com/watch?v=hAEQvlaZgKY"
    else
      send msg, "https://www.youtube.com/watch?v=hAEQvlaZgKY"
    end
  end

  defp get_username(user) when is_binary(user), do: user
  defp get_username(%{name: name}), do: name
end
