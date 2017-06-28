defmodule Sage.Responders.Responses do
  use Hedwig.Responder

  @responses %{
    "make me a sandwich" => "What? Make it yourself.",
    "sudo make me a sandwich" => "Okay.",
  }

  @response_matches Map.keys(@responses) |> Enum.join("|")

  # Respond with one of the responses... ᕙ(⇀‸↼‶)ᕗ
  respond ~r/(#{@response_matches})/, msg do
    send msg, Map.get(@responses, msg.matches[1])
  end
end
