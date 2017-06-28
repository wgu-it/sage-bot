defmodule Sage.Responders.GiphyTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Giphy, []}]

  test "giphy gif", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "!giphy fun times"}}
    assert_receive {:message, %{text: text}}, 1000
    assert String.contains?(text, "giphy.gif")
  end
end
