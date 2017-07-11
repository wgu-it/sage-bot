defmodule Sage.Responder do
  defmacro __using__(_opts) do
    quote do
      use Hedwig.Responder
      import Sage.Responder
    end
  end

  @doc """
  Maybe send a response, if channel is whitelisted.
  """
  def maybe_send(%Hedwig.Message{robot: robot, room: room} = msg, text) do
    if Channel.whitelisted?(room) do
      Hedwig.Robot.send(robot, %{msg | text: text})
    else
      :ok
    end
  end
end
