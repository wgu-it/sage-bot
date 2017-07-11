defmodule Sage.Responders.Uptime do
  @moduledoc """
  `hedwig uptime` Displays how long the bot has been running
  """

  use Sage.Responder

  alias Timex.Duration
  alias Timex.Format.Duration.Formatters.Humanized

  @spec init({String.t(), String.t(), any(), pid()}) :: {:ok, map()}
  def init({aka, name, opts, robot}) do
    :ok = GenServer.cast(self(), :compile_responders)
    state = %{
      aka: aka,
      name: name,
      opts: opts ++ %{started_at: timestamp()},
      responders: [],
      robot: robot
    }

    {:ok, state}
  end

  def timestamp do
    {megasec, sec, _microsec} = :os.timestamp
    megasec * 1_000_000 + sec
  end

  @usage """
  `hedwig uptime` - Show bot uptime
  """
  respond ~r/uptime$/i, msg, state do
    sec_diff = timestamp() - state.opts.started_at
    duration =
      sec_diff
      |> Duration.from_seconds
      |> Humanized.format

    reply msg, "I've been sentient for #{duration}"
  end
end
