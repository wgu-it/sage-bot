defmodule Sage.Responders.InspireTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Inspire, []}]

  test "inspires you", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred inspire me"}}
    assert_receive {:message, %{text: text}}, 1000
    assert String.contains?(text, "http://generated.inspirobot.me/")
  end
end
