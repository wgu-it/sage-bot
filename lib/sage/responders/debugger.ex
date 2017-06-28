defmodule Sage.Responders.Debugger do
  use Hedwig.Responder
  require Logger

  respond ~r/debug (.+)/i, msg do
    reply msg, "`#{msg.matches[1]}`"
  end

  respond ~r/what room( is (this|it))?\??/i, msg do
    reply msg, "We are in `#{msg.room}`."
  end

  respond ~r/who am i\??/i, msg do
    reply msg, "You are `#{inspect(msg.user)}`."
  end
end
