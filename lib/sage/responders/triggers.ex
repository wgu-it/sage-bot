defmodule Sage.Responders.Triggers do
  @moduledoc """
  A map of triggers to respond to.

  Keep the keys in this module lowercase and with no whitespace.

  However, usage is case-insensitive.

  ### Examples

      User> !hello
      sage> Hi there!

      User> !NO
      sage> Noooo! https://www.youtube.com/watch?v=umDr0mPuyQc

  """

  use Sage.Responder

  @triggers %{
    "hello" => "Hi there!",
    "goodbye" => "See ya!",
    "no" => "Noooo! https://www.youtube.com/watch?v=umDr0mPuyQc",
    "nope" => "https://media.giphy.com/media/6h4z4b3v6XWxO/giphy.gif",
    "colors" => "#003057,#4986AD,#C69214,#FFFFFF,#4986AD,#FFFFFF,#509E2F,#862633",
    "git" => "https://github.com/wgu-it/sage-bot",
    "contributing" => "To help me get better you can *fork* https://github.com/wgu-it/sage-bot, *commit* your changes, and then make a *pull request*!",
    "googledrive" => "Repo with eBooks and More! Sign up with your @wgu.edu email address. https://drive.google.com/folderview?id=0B1S7OJNChk1-cWhwNWZTb2JNY1E",
    "linkedin" => "Connect with your fellow slackers. https://docs.google.com/document/d/1ajGLPZpWuxzDtEmWiVxvwxbwFRy0BcdPI0koaa_Zvc4/edit",
    "onthehub" => "https://wgudreamspark.onthehub.com/WebStore/ProductsByMajorVersionList.aspx?cmi_cs=1&cmi_mnuMain=2b44b80c-dfc9-e111-971c-f04da23e67f6",
    "ugt" => "UGT (abbr.): Universal Greeting Time.\n_UGT_ is a convention that states that it is always morning when person comes into a channel, and it is always late night when person leaves. Local time of any member of channel is irrelevant.",
    "y" => "http://i.imgur.com/yZRYrIF.jpg",
    "bcuz" => "http://i.imgur.com/j6nbopM.png",
    "pluralsight" => "Get free access to Pluralsight and Codeschool here: https://lrps.wgu.edu/provision/114583870",
    "skillsoft" => "Access to SkillSoft: https://lrps.wgu.edu/provision/102605",
    "labsim" => "Access Net+ Labsim via: http://lrps.wgu.edu/provision/6147901 and Sec+ via: https://lrps.wgu.edu/provision/42540372",
    "noice" => "https://www.youtube.com/watch?v=h3uBr0CCm58",
    "noice-kp" => "https://www.youtube.com/watch?v=rQnYi3z56RE&t=5s",
    "discount"=> "Student Discount List. Need to add a discount to this list? Post in #feedback for changes: https://docs.google.com/document/d/1cU-6kOuv-wGVaDbfY-H369gF0noasYc-p-bNnltKpD4/edit?usp=sharing",
    "exercism"=> "Want to practice coding problems and see solutions from other WGU students/alumni? Our team is: http://exercism.io/teams/wgu/streams",
    "freebook" => "",
    "guidelines" => "1. Personal attacks are unacceptable. Bullying or harassment will not be tolerated. \n2. Hate speech is not permitted.\n3. Do not deliberately disrupt the community.\n4. Illegal activity, XXX content, and discussion of politics are not allowed.\n5. No soliciting, advertising, or marketing (unless it’s for a job posting in the #job-listings channel).\n6. Nothing allowed that may be against the WGU Student Code of Conduct.\n7. Use the proper channel for discussions.\n\nSlack members that don’t adhere to these guidelines will be given warnings, and chronic offenders may be removed from the Slack. We want to create the best possible atmosphere for WGU IT students, and keeping our group respectful and accessible is priority.",
    "lynda" => "https://lrps.wgu.edu/provision/11650977",
    "highfive" => "http://1.media.collegehumor.cvcdn.com/64/33/39bee4f33728e1f54402d858540d373c-weekend-update-high-five.gif",
    "jetbrains" => "https://www.jetbrains.com/student/"
  }

  @trigger_matches Map.keys(@triggers) |> Enum.join("|")

  @trigger_char Config.get_env(:sage, :trigger_char, "!")

  # Respond with one of the trigger responses... ᕕ( ᐛ )ᕗ
  hear ~r/^#{@trigger_char}(#{@trigger_matches})$/i, msg do
    cond do
     to_string(msg.matches[1]) == "freebook" ->
      send msg, to_string(getbook)
     to_string(msg.matches[1]) != "freebook" ->
      send msg, Map.get(@triggers, sanitize(msg.matches[1]))
    end

  end

  @usage """
  `hedwig list triggers` - Respond with a list of available triggers
  """
  respond ~r/list triggers/, msg do
    send msg,
      @triggers
      |> Map.keys()
      |> Enum.map(fn trigger -> "`#{@trigger_char}#{trigger}`" end)
      |> Enum.join(", ")
  end

  # Sanitize the input
  defp sanitize(match) do
    match
    |> String.downcase()
  end

  def getbook do
    Application.ensure_all_started :inets

    {:ok, resp} = :httpc.request(:get, {'https://www.packtpub.com/packt/offers/free-learning', []}, [], [body_format: :binary])
    {{_, 200, 'OK'}, _headers, body} = resp
    title = Floki.find(body, ".dotd-title h2")
    |> Floki.text()
    |> String.trim()
    description = Floki.find(body, ".dotd-main-book-summary div:nth-of-type(3)")
    |> Floki.text()
    |> String.trim()
    result = "Today's free book is: \n" <> title <> "\n" <> description <> "\nhttps://www.packtpub.com/packt/offers/free-learning"
  end
end
