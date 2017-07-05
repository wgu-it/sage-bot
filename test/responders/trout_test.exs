defmodule Sage.Responders.TroutTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Trout, []}]

  test "slaps you", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred slap me"}}
    assert_receive {:message, %{text: text}}, 500
    assert String.contains?(text, "slaps you around a bit with a large trout")
  end
end
