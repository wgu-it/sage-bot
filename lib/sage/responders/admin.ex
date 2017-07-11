defmodule Sage.Responders.Admin do
  use Sage.Responder

  require Logger

  respond ~r/deploy now$/, msg do
    if is_admin?(msg.user) do
      Logger.warn "Deploying now..."
      System.cmd "curl", [Config.get_env(:sage, :deployhook)]
      send msg, "Yes, sir. (╭ರᴥ•́)"
    else
      Logger.warn "Loser trying to deploy..."
      send msg, "No, sir. ಠ_ರೃ"
    end
  end

  @doc """
  Check if the user is an admin.
  """
  @spec is_admin?(Hedwig.User.t) :: boolean
  def is_admin?(%{name: name}) do
    Config.get_env(:sage, :admins, "")
    |> String.split(",")
    |> Enum.any?(&String.equivalent?(&1, name))
  end
end
