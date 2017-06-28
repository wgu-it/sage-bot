defmodule Sage.Responders.TriggersTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Triggers, []}]

  test "!ugt universal greeting time", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "!ugt"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "Universal Greeting Time")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Triggers, []}]

  test "!git repo", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "!git"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "https://github.com/wgu-it/sage-bot")
  end
end
