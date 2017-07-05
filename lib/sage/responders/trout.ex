defmodule Sage.Responders.Trout do
  use Hedwig.Responder
  require Logger

  @usage """
  bubo slap me - slaps you around a bit with a large trout
  """
  respond ~r/slap (?:me|(.+))$/i, msg do
    if msg.matches[1] do
      send msg, "/me slaps #{msg.matches[1]} around a bit with a large trout"
    else
      send msg, "/me slaps you around a bit with a large trout"
    end
  end

end
