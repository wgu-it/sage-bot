defmodule Sage.Responders.Responses do
  @moduledoc """
  A map of triggers to respond to.

  Usage *is* case-sensitive.

  ### Examples

      User> sage make me a sandwich
      sage> What? Make it yourself.

      User> sage sudo make me a sandwich
      sage> Okay.

  """

  use Sage.Responder

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
