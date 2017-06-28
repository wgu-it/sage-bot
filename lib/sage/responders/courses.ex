defmodule Sage.Responders.Courses do
  use Hedwig.Responder

  require Logger

  alias Sage.Support.CourseList

  @usage """
  <code> - Responds with the course code and name
  """
  hear ~r/(?:[a-zA-Z]{1,3})(?:\s|-)?(?:[0-9]{1,4})/i, msg do
    code = sanitize(msg.matches[0])

    case CourseList.find_by_code(code) do
      {_code, course} ->
        send msg, "*#{code}*: #{course[:name]}"
      nil ->
        Logger.warn "No match"
        :ok
    end
  end

  @usage """
  hedwig describe <code> - Responds with the course description
  """
  respond ~r/describe (([a-zA-Z]{1,3})(?:\s|-)?([0-9]{1,4}))$/i, msg do
    code = sanitize(msg.matches[1])

    case CourseList.find_by_code(code) do
      {_code, course} ->
        send msg, course[:desc]
      nil ->
        Logger.warn "No match"
        :ok
    end
  end

  # Sanitize user input code.
  @spec sanitize(String.t) :: String.t
  def sanitize(code) do
    code
    |> String.replace(~r/[^a-zA-Z0-9]+/, "")
    |> String.upcase
  end
end
