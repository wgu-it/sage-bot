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

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Triggers, []}]

  test "lists triggers", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred list triggers"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "`, `!")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Triggers, []}]

  test "!noice", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "!noice"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "https://www.youtube.com/watch?v=h3uBr0CCm58")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Triggers, []}]

  test "!noice-kp", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "!noice-kp"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "https://www.youtube.com/watch?v=rQnYi3z56RE&t=5s")
  end

end
