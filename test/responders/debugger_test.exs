defmodule Sage.Responders.DebuggerTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Debugger, []}]

  test "replies with the room", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred where am i?"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "You are in")
  end
end
