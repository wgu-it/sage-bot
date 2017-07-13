defmodule Sage.Responders.SillyResponsesTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.SillyResponses, []}]

  test "slaps you", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred slap me"}}
    assert_receive {:message, %{text: text}}, 500
    assert String.contains?(text, "around a bit with a")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.SillyResponses, []}]

  test "slaps joe", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred slap joe"}}
    assert_receive {:message, %{text: text}}, 500
    assert String.contains?(text, "slaps joe around a bit with a")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.SillyResponses, []}]

  test "doesn't slap self", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred slap bubo"}}
    assert_receive {:message, %{text: text}}, 500
    assert String.contains?(text, "I don't think so ಠ_ಠ")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.SillyResponses, []}]

  test "flips a coin", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred flip a coin"}}
    assert_receive {:message, %{text: text}}, 500
    "I flipped a coin for shalmezad and it landed *heads*!"
    assert String.contains?(text, "I flipped a coin for")
    assert String.contains?(text, "and it landed")
    assert String.contains?(text, "heads") || String.contains?(text, "tails")
  end


end
