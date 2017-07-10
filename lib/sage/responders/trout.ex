defmodule Sage.Responders.Trout do
  use Hedwig.Responder
  require Logger

  @usage """
  `bubo slap me` - slaps you around a bit with a large trout
  """
  respond ~r/slap (?:me|(.+))$/i, msg do
    if msg.matches[1] do
      send msg, "_slaps #{msg.matches[1]} around a bit with a large trout_"
    else
      send msg, "_slaps you around a bit with a large trout_"
    end
  end

end
