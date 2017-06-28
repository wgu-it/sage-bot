defmodule Sage.Responders.CoursesTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Courses, []}]

  test "responds with the course", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "C100"}}
    assert_receive {:message, %{text: name}}
    assert String.contains?(name, "Introduction to Humanities")
  end

  @tag start_robot: true, name: "alfred", responders: [{Sage.Responders.Courses, []}]

  test "responds with course description", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred describe C100"}}
    assert_receive {:message, %{text: name}}
    assert_receive {:message, %{text: desc}}
    assert String.contains?(name, "Introduction to Humanities")
    assert String.contains?(desc, "allows students to practice essential writing")
  end
end