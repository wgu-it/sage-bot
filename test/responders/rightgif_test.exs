defmodule Sage.Responders.RightgifTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Rightgif, []}]

  test "sends a gif", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "!gif fun times"}}
    assert_receive {:message, %{text: text}}, 5000
    assert String.contains?(text, ".gif")
  end
end
