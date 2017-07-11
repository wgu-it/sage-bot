defmodule Sage.Responders.SillyResponses do
  @moduledoc false
  use Sage.Responder
  require Logger

  @usage """
  hedwig slap <target> - slaps <target> around a bit with a large trout
  """
  respond ~r/slap (?:me|([^\s]+))$/i, msg do
    target = Map.get(msg.matches, 1, "you")
    fish = Enum.random(["trout", "lamprey", "tuna", "arctic char", "clown goby"])
    maybe_send msg, "_slaps #{target} around a bit with a large #{fish}_"
  end

  hear ~r/^just do it(?:,? ([^\s]+))?/, msg do
    if msg.matches[1] do
      send msg, "#{msg.matches[1]}: https://www.youtube.com/watch?v=hAEQvlaZgKY"
    else
      send msg, "https://www.youtube.com/watch?v=hAEQvlaZgKY"
    end
  end
end
