defmodule Channel do
  @moduledoc """
  For limiting stuff to certain channels, by Channel ID.
  """

  @whitelist [
    "C0Z77BT8V", # random
    "G5YGDFA07", # bubo-test
    "C5YHBTNG6", # testing
    "C757ANLSK", # inspire
  ]

  @doc """
  Checks if a channel id is in the whitelisted channels.

  ## Examples

      iex> Channel.whitelisted?("C0Z77BT8V")
      true

      iex> Channel.whitelisted?("C14CFRRTL")
      false

  """
  def whitelisted?(nil), do: true
  def whitelisted?(channel_id) do
    Enum.any?(channels(), &String.equivalent?(&1, channel_id))
  end

  @doc """
  Get whitelisted channels from env variables, or use the default list.
  """
  def channels do
    env_channels = Config.get_env(:sage, :white_list_channels)

    if env_channels do
      String.split(env_channels, ",")
    else
      @whitelist
    end
  end
end
