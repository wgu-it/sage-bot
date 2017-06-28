defmodule Sage.Responders.ResponsesTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Responses, []}]

  test "doesn't make a sandwich", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred make me a sandwich"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "What? Make it yourself.")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Responses, []}]

  test "makes a sandwich", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred sudo make me a sandwich"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "Okay.")
  end
end
