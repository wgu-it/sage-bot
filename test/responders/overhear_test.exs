defmodule Sage.Responders.OverhearTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Overhear, []}]

  test "emotes a high five", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "^5 mord"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "high fives mord")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Overhear, []}]

  test "unflips the table", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "(╯°□°）╯︵ ┻━┻"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "┬──┬◡ﾉ(° -°ﾉ)")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Overhear, []}]

  test "takes things srsly", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "seriously guys"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "http")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Overhear, []}]

  test "motivational", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "just do it"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "https://www.youtube.com/watch?v=hAEQvlaZgKY")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Overhear, []}]

  test "motivates mord", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "just do it, mord"}}
    assert_receive {:message, %{text: text}}
    assert String.contains?(text, "mord: https://www.youtube.com/watch?v=hAEQvlaZgKY")
  end
end
